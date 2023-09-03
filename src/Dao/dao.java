package Dao;

import Bean.meeting;
import Bean.room;
import Bean.users;
import Util.Util;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class dao {

    public Connection sjk()
    {
        Connection connect;
        try {
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }
    public boolean queryEmpty(String name,String sex,String bumen,String sjnum,String home,String mima)
    {
        boolean flag=false;
        if(bumen==null||"".equals((bumen))&&name==null||"".equals(name)&&sex==null||"".equals(sex)&&sjnum==null||"".equals(sjnum)&&home==null||"".equals(home)&&mima==null||"".equals(mima))
        {
            flag=true;
        }
        return flag;
    }
    public Connection sj()
    {
        Connection connect;
        try {
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            return connect;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }


    //查询旧密码是否正确
    public boolean judgemima(String name,String mima)
    {
        boolean flag=false;
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from zhiyuan where name="+"name";
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                String mima2 =(rs.getString("mima"));
                if (mima2.equals(mima))
                    flag=true;
            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

     return flag;
    }
    //修改顾客密码
    public void mimaxiugai(String mima)
    {
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("Update zhiyuan set mima=(mima)");
            preparedStatement.setString(7,mima);
            preparedStatement.executeUpdate();
            preparedStatement.execute();
            connect.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    //录入职员input()
    public void input(String name,String sex,String bumen,String sjnum,String home,String mima)
    {
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("insert into zhiyuandsh (name,sex,bumen,sjnum,home,mima) values (?,?,?,?,?,?)");
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,sex);
            preparedStatement.setString(3,bumen);
            preparedStatement.setString(4,sjnum);
            preparedStatement.setString(5,home);
            preparedStatement.setString(6,mima);

            preparedStatement.executeUpdate();
            connect.close();
            preparedStatement.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }


//显示所有职员信息
    public List<users> readUser() {
        List<users> list = new ArrayList<users>();
        Connection con=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from zhiyuandsh ";
        try {//连接数据库的操作
            Statement statement=con.createStatement();
            rs=statement.executeQuery(sql);
            while (rs.next()) {
                users u = new users();
                u.setUserName(rs.getString("name"));
                u.setSex(rs.getString("sex"));
                u.setPosition(rs.getString("home"));
                u.setPhone(rs.getString("sjnum"));
                u.setDepartment(rs.getString("bumen"));
               u.setMima(rs.getString("mima"));

                list.add(u);
            }
            Util.close(rs, statement, con);
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

//显示单个职员信息
    public static users getuser(String name) {
        users u = new users();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from zhiyuandsh where name="+"name";
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                u.setUserName(rs.getString("name"));
                u.setSex(rs.getString("sex"));
                u.setPosition(rs.getString("home"));
                u.setPhone(rs.getString("sjnum"));
                u.setDepartment(rs.getString("bumen"));
                u.setMima(rs.getString("mima"));
            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return u;
    }



    public static users getuser1(String name) {
        users u = new users();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from zhiyuandsh where name="+"name";
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                u.setUserName(rs.getString("name"));
                u.setSex(rs.getString("sex"));
                u.setPosition(rs.getString("home"));
                u.setPhone(rs.getString("sjnum"));
                u.setDepartment(rs.getString("bumen"));
                u.setMima(rs.getString("mima"));
            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return u;
    }

    public static users getuser2(String name) {
        users u = new users();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from zhiyuan where name="+"name";
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                u.setUserName(rs.getString("name"));
                u.setSex(rs.getString("sex"));
                u.setPosition(rs.getString("home"));
                u.setPhone(rs.getString("sjnum"));
                u.setDepartment(rs.getString("bumen"));
                u.setMima(rs.getString("mima"));
            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return u;
    }


    //添加单个职员信息
    public boolean add(String name,String sex,String bumen,String sjnum,String home,String mima)
    {
        boolean flag=false;
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("insert into zhiyuan (name,sex,bumen,sjnum,home,mima) values (?,?,?,?,?,?)");
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,sex);
            preparedStatement.setString(3,bumen);
            preparedStatement.setString(4,sjnum);
            preparedStatement.setString(5,home);
            preparedStatement.setString(6,mima);

            preparedStatement.executeUpdate();
            connect.close();
            preparedStatement.close();
            flag=true;
        }catch(SQLException e){
            e.printStackTrace();
        }
        return flag;
    }


    //录入会议室信息input2()
    public void input2(String roomid ,String name,String address,String keyong,String muqian,String num){
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("insert into huiyishi (roomid,name,address,keyong,muqian,num) values (?,?,?,?,?,?)");
            preparedStatement.setString(1,roomid);
            preparedStatement.setString(2,name);
            preparedStatement.setString(3,address);
            preparedStatement.setString(4,keyong);
            preparedStatement.setString(5,muqian);
            preparedStatement.setString(6,num);
            preparedStatement.executeUpdate();
            connect.close();
            preparedStatement.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    //显示所有会议室信息
    public List<room> readRoom() {
        List<room> list = new ArrayList<room>();
        Connection con=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from huiyishi ";
        try {//连接数据库的操作
            Statement statement=con.createStatement();
            rs=statement.executeQuery(sql);
            while (rs.next()) {
                room r =new room();
                r.setId(Integer.parseInt(rs.getString("id")));
                r.setMeetroomId(rs.getString("roomid"));  ;
                r.setMeetroomName(rs.getString("name"));
                r.setAddress(rs.getString("address"));
                r.setReadyState(rs.getString("keyong"));
                r.setStatus(rs.getString("muqian"));
                r.setCapacity(rs.getString("num"));

                list.add(r);
            }
            Util.close(rs, statement, con);
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    //显示可用会议室信息
    public List<room> readRoomk() {
        List<room> list = new ArrayList<room>();
        Connection con=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from huiyishi where keyong like '可%'";
        try {//连接数据库的操作
            Statement statement=con.createStatement();
            rs=statement.executeQuery(sql);
            while (rs.next()) {
                room r =new room();
                r.setId(Integer.parseInt(rs.getString("id")));
                r.setMeetroomId(rs.getString("roomid"));  ;
                r.setMeetroomName(rs.getString("name"));
                r.setAddress(rs.getString("address"));
                r.setReadyState(rs.getString("keyong"));
                r.setStatus(rs.getString("muqian"));
                r.setCapacity(rs.getString("num"));

                list.add(r);
            }
            Util.close(rs, statement, con);
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    //修改会议室信息
public void xiugai2(String roomid ,String name,String address,String keyong,String muqian,String num)
{
    try {
        PreparedStatement preparedStatement=null;
        Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
        preparedStatement=connect.prepareStatement("Update huiyishi set roomid=?,name=?,address=?,keyong=?,muqian=?,num=? where roomid=?");
        preparedStatement.setString(1,roomid);
        preparedStatement.setString(2,name);
        preparedStatement.setString(3,address);
        preparedStatement.setString(4,keyong);
        preparedStatement.setString(5,muqian);
        preparedStatement.setString(6,num);
        preparedStatement.executeUpdate();
        preparedStatement.execute();
        connect.close();
    }catch(SQLException e){
        e.printStackTrace();
    }
}

//删除会议室信息
public boolean deletedata2(int id)
{
    boolean flag =false;
    try {
        PreparedStatement preparedStatement=null;
        Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
        preparedStatement=connect.prepareStatement("delete from huiyishi where id = ?");
        preparedStatement.setInt(1,id);
        preparedStatement.executeUpdate();
        connect.close();
        preparedStatement.close();
        flag =true;
    }catch(SQLException e){
        e.printStackTrace();
    }
    return flag;
}

//录入会议信息

    public void input3(String theme ,String neirong,String begin,String end,String canhuiren,String people,String room){
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("insert into huiyidsh ( theme,neirong,begin,end,canhuiren,people,room) values (?,?,?,?,?,?)");
            preparedStatement.setString(1,theme);
            preparedStatement.setString(2,neirong);
            preparedStatement.setString(3,begin);
            preparedStatement.setString(4,end);
            preparedStatement.setString(5,canhuiren);
            preparedStatement.setString(6,people);
            preparedStatement.setString(7,room);
            preparedStatement.executeUpdate();
            connect.close();
            preparedStatement.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    //获取所有会议信息
    public List<meeting> readMeeting() {
        List<meeting> list = new ArrayList<meeting>();
        Connection con=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from huiyidsh ";
        try {//连接数据库的操作
            Statement statement=con.createStatement();
            rs=statement.executeQuery(sql);
            while (rs.next()) {
                meeting m= new meeting();

                m.setMeetingName(rs.getString("theme"));  ;
               m.setMeetingBegin(rs.getString("begin"));
                m.setMeetingEnd(rs.getString("end"));
                m.setMeetingContent(rs.getString("neirong"));
               m.setMeetingNum(rs.getString("canhuiren"));
                m.setParticipants(rs.getString("people"));

                list.add(m);
            }
            Util.close(rs, statement, con);
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    //显示单个会议信息
    public static meeting getmeeting(String theme) {
        meeting m = new meeting();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from huiyidsh where theme="+"theme";
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                m.setMeetingName(rs.getString("theme"));  ;
                m.setMeetingBegin(rs.getString("begin"));
                m.setMeetingEnd(rs.getString("end"));
                m.setMeetingContent(rs.getString("neirong"));
                m.setMeetingNum(rs.getString("canhuiren"));
                m.setParticipants(rs.getString("people"));

            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return m;
    }



    public static meeting getmeeting1(String theme) {
        meeting m = new meeting();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from huiyidsh where theme="+"theme";
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                m.setMeetingName(rs.getString("theme"));  ;
                m.setMeetingBegin(rs.getString("begin"));
                m.setMeetingEnd(rs.getString("end"));
                m.setMeetingContent(rs.getString("neirong"));
                m.setMeetingNum(rs.getString("canhuiren"));
                m.setParticipants(rs.getString("people"));

            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return m;
    }

    public static meeting getmeeting2(String theme) {
        meeting m = new meeting();
        Connection connection=Util.getConnection();
        ResultSet rs=null;
        String sql="select * from huiyidsh where theme="+"theme";
        try {
            Statement statement=connection.createStatement();
            rs=statement.executeQuery(sql);
            if(rs.next()) {
                m.setMeetingName(rs.getString("theme"));  ;
                m.setMeetingBegin(rs.getString("begin"));
                m.setMeetingEnd(rs.getString("end"));
                m.setMeetingContent(rs.getString("neirong"));
                m.setMeetingNum(rs.getString("canhuiren"));
                m.setParticipants(rs.getString("people"));

            }
            Util.close(rs,statement,connection);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return m;
    }


    //添加单个职员信息
    public boolean add1(String theme ,String neirong,String begin,String end,String canhuiren,String people,String room)
    {
        boolean flag=false;
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("insert into huiyi ( theme,neirong,begin,end,canhuiren,people,room) values (?,?,?,?,?,?)");
            preparedStatement.setString(1,theme);
            preparedStatement.setString(2,neirong);
            preparedStatement.setString(3,begin);
            preparedStatement.setString(4,end);
            preparedStatement.setString(5,canhuiren);
            preparedStatement.setString(6,people);
            preparedStatement.setString(7,room);

            preparedStatement.executeUpdate();
            connect.close();
            preparedStatement.close();
            flag=true;
        }catch(SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    //修改职员信息 xiugai()
    public void xiugai(String sfnum,String name,String sex,String sjnum,String home,String mima,String sf1)
    {
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("Update zhiyuan set sfnum=?,name=?,sex=?,sjnum=?,home=?,miam=? where sfnum=?");
            preparedStatement.setString(1,sfnum);
            preparedStatement.setString(2,name);
            preparedStatement.setString(3,sex);
            preparedStatement.setString(4,sjnum);
            preparedStatement.setString(5,home);
            preparedStatement.setString(6,mima);
            preparedStatement.setString(7,sf1);
            preparedStatement.executeUpdate();
            preparedStatement.execute();
            connect.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
//重置密码
    public boolean chongzhimima(String name){
        boolean flag =false;
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("Update zhiyuan set mima=123456 where name=?");
            preparedStatement.executeUpdate();
            preparedStatement.execute();
            connect.close();
            flag=true;
        }catch(SQLException e){
            e.printStackTrace();
        }

        return flag;
    }

    //删除职员信息deletedata()
    public void deletedata(String sfnum)
    {
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("delete from zhiyuan where sfnum = ?");
            preparedStatement.setString(1,sfnum);
            preparedStatement.executeUpdate();
            connect.close();
            preparedStatement.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public void deletedata1(String name)
    {
        try {
            PreparedStatement preparedStatement=null;
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            preparedStatement=connect.prepareStatement("delete from zhiyuandsh where name = ?");
            preparedStatement.setString(1,name);
            preparedStatement.executeUpdate();
            connect.close();
            preparedStatement.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    public boolean queryEmpty1(String name)
    {
        boolean flag=false;
        if(name==null||"".equals((name)))
        {
            flag=true;
        }
        return flag;
    }

    //判断职员登录信息是否正确judgezhiyuan()
    public int judgezhiyuan(String name, String mima)
    {
        int flag=0;
        try {
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            Statement stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery("select * from zhiyuan");
            while(rs.next())
            {
                if((name.equals(rs.getString("name")))&& (mima.equals(rs.getString("mima"))))
                {
                    flag=1;
                }
                else if (name.equals(rs.getString("name"))&& !mima.equals(rs.getString("mima")))
                {
                    flag=2;
                }
            }
            rs.close();
            connect.close();
            stmt.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return  flag;
    }



    //判断管理员登录信息是否正确judgeguanli()
    public boolean judgeguanli(String name,String mima){
        boolean flag=false;
        if (("administer".equals(name))&&("123456".equals(mima))){
            flag = true;
        }
        return flag;
    }

    //查重会议室
    public boolean chachonghuiyishi(String roomid)
    {
        boolean flag=false;
        try {
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            Statement stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery("select * from huiyishi");
            while(rs.next())
            {
                if(roomid.equals(rs.getString("roomid")))
                {
                    flag=true;
                }
            }
            rs.close();
            connect.close();
            stmt.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
 //判断会议室人数容纳
    public boolean judgehysnum(String jibie,String num){
        int renshu = Integer.parseInt(num);
        boolean flag= false;
        switch(jibie){
            case "C":if (renshu>10){flag=true;}break;
            case "B":if (renshu>40){flag=true;}break;
        }
        return flag;
    }


    //查重手机号码
    public boolean chachong(String sjnum)
    {
        boolean flag=false;
        try {
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/huiyishi?&useSSL=false&serverTimezone=UTC","root","123456");
            Statement stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery("select * from zhiyuandsh");
            while(rs.next())
            {
                if(sjnum.equals(rs.getString("sfnum")))
                {
                    flag=true;
                }
            }
            rs.close();
            connect.close();
            stmt.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //判断手机号码是否为11位
    public boolean sjhm(String sjhm)
    {
        boolean flag=false;
        if(sjhm.length()==11)
        {
            flag=true;
            }

        return  flag;
    }
    public static void main(String[] args) {
        dao dao=new dao();
    }
}