package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserLoginServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//��һ��������ҳ���ϵĲ���
					String uname = request.getParameter("username");
					String pword = request.getParameter("password");
					
			//�ڶ�����ʹ��JDBC�����յ��Ĳ������浽���ݿ���
				//׼��������Ϣ
				String url="jdbc:mysql://localhost:3306/chao?useUnicode=true&characterEncoding=utf8";
				String user="root";
				String password="root";
				int i=0;
				//��ȡ��Դ��try����
				Connection conn = null;
				java.sql.PreparedStatement pst = null;
				ResultSet rs = null;
				
				try {
					//����������
					Class.forName("com.mysql.jdbc.Driver");
					//��ȡ����
				    conn = DriverManager.getConnection(url, user, password);
					//��ȡ�������ݿ�Ĺ��߶���
					pst = conn.prepareStatement("select * from user where username=?&&password=?");
					pst.setString(1,uname);
					pst.setString(2,pword);
					//ִ�в���
					rs = pst.executeQuery();
					//��rs��ȡ������
					while(rs.next()){
						int ii = rs.getInt(1);
						String us = rs.getString(2);
						String pd  = rs.getString(3);
						String ag = rs.getString(4);
						String te  = rs.getString(5);
						System.out.println(us+pd+ag+te);
						System.out.println(us+":�û���½�ɹ�");
						i=1;
					}
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {					//�ͷ���Դ
					try {
						if(pst != null)
							pst.close();
						if(conn!=null)
							conn.close();
						if(rs!=null)
							rs.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
				if(i==1){
					//����������ת��login.jsp
					String path=request.getContextPath();//��ȡ��Ŀ��·��
					response.sendRedirect(path+"/main.jsp");
				}
//				
			}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
