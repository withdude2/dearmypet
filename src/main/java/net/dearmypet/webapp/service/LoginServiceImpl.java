package net.dearmypet.webapp.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.dearmypet.webapp.dao.LoginDao;
import net.dearmypet.webapp.vo.LoginVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	@Override
	public Map getLoginAllList() {
		HashMap map = new HashMap();

		List<LoginVO> list = loginDao.selectAllLogin();
		map.put("list", list);
		
		return map;
	}

}
