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

public class UserRegisterServlet extends HttpServlet {
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//��һ��������ҳ���ϵĲ���
					String uname = request.getParameter("username");
					String pword = request.getParameter("password");
					String ag = request.getParameter("age");
					String tnum = request.getParameter("tell");
			//�ڶ�����ʹ��JDBC�����յ��Ĳ������浽���ݿ���
				//׼��������Ϣ
				String url="jdbc:mysql://localhost:3306/chao?useUnicode=true&characterEncoding=utf8";
				String user="root";
				String password="root";
				int b=0;
				//��ȡ��Դ��try����
				Connection conn = null;
				java.sql.PreparedStatement pst = null;
				ResultSet rs = null;
						
				try {
					//����������(������쳣��try)
					Class.forName("com.mysql.jdbc.Driver");
					//��ȡ����
				    conn = DriverManager.getConnection(url, user, password);
					
					//��ȡ�������ݿ�Ĺ��߶���
					pst = conn.prepareStatement("insert into user values(0,?,?,?,?)");
					//��ȫSQL
					pst.setString(1,uname);
					pst.setString(2,pword);
					pst.setString(3,ag);
					pst.setString(4,tnum);
					//ִ�в���
					int row = pst.executeUpdate();
					//���ؽ��
					if(row==1){
						System.out.println("ע��ɹ�");
						b=1;
					} else {
						System.out.println("ע��ʧ��");
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
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
			if(b==1){
				//����������ת��login.jsp
				String path=request.getContextPath();//��ȡ��Ŀ��·��
				response.sendRedirect(path+"/main.jsp");
			}
			}
		
		

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(request, response);
		}

}
