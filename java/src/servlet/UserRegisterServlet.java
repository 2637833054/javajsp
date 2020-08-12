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
			//第一步：接收页面上的参数
					String uname = request.getParameter("username");
					String pword = request.getParameter("password");
					String ag = request.getParameter("age");
					String tnum = request.getParameter("tell");
			//第二步：使用JDBC将接收到的参数保存到数据库中
				//准备链接信息
				String url="jdbc:mysql://localhost:3306/chao?useUnicode=true&characterEncoding=utf8";
				String user="root";
				String password="root";
				int b=0;
				//提取资源到try外面
				Connection conn = null;
				java.sql.PreparedStatement pst = null;
				ResultSet rs = null;
						
				try {
					//加载驱动类(会出现异常，try)
					Class.forName("com.mysql.jdbc.Driver");
					//获取链接
				    conn = DriverManager.getConnection(url, user, password);
					
					//获取操作数据库的工具对象
					pst = conn.prepareStatement("insert into user values(0,?,?,?,?)");
					//补全SQL
					pst.setString(1,uname);
					pst.setString(2,pword);
					pst.setString(3,ag);
					pst.setString(4,tnum);
					//执行操作
					int row = pst.executeUpdate();
					//返回结果
					if(row==1){
						System.out.println("注册成功");
						b=1;
					} else {
						System.out.println("注册失败");
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
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
			if(b==1){
				//第三步：跳转到login.jsp
				String path=request.getContextPath();//获取项目根路径
				response.sendRedirect(path+"/main.jsp");
			}
			}
		
		

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(request, response);
		}

}
