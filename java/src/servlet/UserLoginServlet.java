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
			//第一步：接收页面上的参数
					String uname = request.getParameter("username");
					String pword = request.getParameter("password");
					
			//第二步：使用JDBC将接收到的参数保存到数据库中
				//准备链接信息
				String url="jdbc:mysql://localhost:3306/chao?useUnicode=true&characterEncoding=utf8";
				String user="root";
				String password="root";
				int i=0;
				//提取资源到try外面
				Connection conn = null;
				java.sql.PreparedStatement pst = null;
				ResultSet rs = null;
				
				try {
					//加载驱动类
					Class.forName("com.mysql.jdbc.Driver");
					//获取链接
				    conn = DriverManager.getConnection(url, user, password);
					//获取操作数据库的工具对象
					pst = conn.prepareStatement("select * from user where username=?&&password=?");
					pst.setString(1,uname);
					pst.setString(2,pword);
					//执行操作
					rs = pst.executeQuery();
					//从rs中取出数据
					while(rs.next()){
						int ii = rs.getInt(1);
						String us = rs.getString(2);
						String pd  = rs.getString(3);
						String ag = rs.getString(4);
						String te  = rs.getString(5);
						System.out.println(us+pd+ag+te);
						System.out.println(us+":用户登陆成功");
						i=1;
					}
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {					//释放资源
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
					//第三步：跳转到login.jsp
					String path=request.getContextPath();//获取项目根路径
					response.sendRedirect(path+"/main.jsp");
				}
//				
			}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
