package com.multi.myapp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		//�α��� ����Ȯ���Ͽ� �α��� �Ȱ�� ȣ���� �����ּҷ� �̵��ϸ� �ǰ�,
		//�α��� �ȵ� ��� �α��� ������ �̵��ϵ��� ������ �����Ѵ�.
		
		HttpSession session = request.getSession();
		
		// null, "Y"		
		String logStatus = (String)session.getAttribute("logStatus");
		
		if(logStatus == null || !logStatus.equals("Y")) {//�α����� �ȵ� ��� -> �������� ���߰� �α����� �������� �̵�
			response.sendRedirect(request.getContextPath()+"/sign/login");
			return false;
		}
		// ��ȯ���� true�̸� ���� �������� �����ϰ�
		//       false�̸� ���ο� �ּҷ� �̵��Ѵ�.
			
		return true;
	}
	// ��Ʈ�ѷ��� ���� �� view������ �̵��ϱ�  ���� ����Ǵ� �޼ҵ�
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, 
			@Nullable ModelAndView mav) throws Exception{
	}
	//��Ʈ�ѷ��� ���� �� ȣ��Ǵ� �޼ҵ�
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable Exception e) throws Exception {
		
	}
	
	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception{
		super.afterConcurrentHandlingStarted(request, response, handler);
	}
}
