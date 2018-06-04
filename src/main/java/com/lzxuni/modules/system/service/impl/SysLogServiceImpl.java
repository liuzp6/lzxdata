/**
 * Copyright 2018 人人开源 http://www.renren.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzxuni.common.utils.date.DateUtil;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.SysLogEntity;
import com.lzxuni.modules.system.mapper.SysLogDao;
import com.lzxuni.modules.system.service.SysLogService;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Date;
import java.util.List;


@Service("sysLogService")
public class SysLogServiceImpl extends ServiceImpl<SysLogDao, SysLogEntity> implements SysLogService {

    @Override
    public PageInfo<SysLogEntity> queryPage(PageParameter pageParameter, SysLogEntity sysLogEntity) {
        PageHelper.startPage(pageParameter.getPage(), pageParameter.getRows());
        List<SysLogEntity> sysLogEntityList = baseMapper.queryList(sysLogEntity);
        PageInfo<SysLogEntity> pageInfo = new PageInfo<>(sysLogEntityList);
        return pageInfo;
    }

	@Override
	public void deleteBatch(String[] ids) {
		this.deleteBatchIds(Arrays.asList(ids));
	}

	@Override
	public void deleteAll(String operationType, Integer keepTime) {
		SysLogEntity sysLogEntity = new SysLogEntity();
		String[] operationTypes;
		if(operationType.equals("操作")){
			operationTypes= new String[]{"登陆","异常","访问"};
			sysLogEntity.setOperationTypes(operationTypes);
			sysLogEntity.setOperationType(null);
		}else{
			sysLogEntity.setOperationType(operationType);
		}

		Date now = new Date();
		if(keepTime!=0){
			final Date endTime = DateUtil.getDateBefore(now, keepTime);
			sysLogEntity.setEndTime(endTime);
		}
		baseMapper.delete(sysLogEntity);
	}
}
