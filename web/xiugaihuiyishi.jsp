<%--
  Created by IntelliJ IDEA.
  User: 榕宝
  Date: 2021/12/9
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改会议室信息界面</title>
</head>
<body>
<form action="xiugaihuiyishi`.jsp" method="get">
    <table align="center" border="1" width="500">
        <tr>
            <td>会议室编号： </td>
            <td>
                <label>
                    <select name="jibie">
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C" selected>C</option>
                    </select>
                </label>
                <label>
                    <input type="text" name="number" />
                </label>
            </td>
        </tr>
        <tr>
            <td>会议室名称: </td>
            <td>
                <label>
                    <input type="text" name="name" />
                </label>
            </td>
        </tr>
        <tr>
            <td>会议室地址: </td>
            <td>
                <label>
                    <input type="text" name="address" />
                </label>
            </td>
        </tr>
        <tr>
            <td>可用状态： </td>
            <td>
                <label>
                    <input type="radio" name="keyong" value="可用">可用<br>
                    <input type="radio" name="keyong" value="不可用" checked>不可用<br>
                </label>
            </td>
        </tr>
        <tr>
            <td>目前状态： </td>
            <td>
                <label>
                    <input type="radio" name="muqian" value="占用">占用<br>
                    <input type="radio" name="muqian" value="不占用" checked>不占用<br>
                </label>
            </td>
        </tr>
        <tr>
            <td>容纳人数： </td>
            <td>
                <label>
                    <input type="text" name="num" />
                </label>
            </td>
        </tr>


        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提交" />
                <input type="reset" value="重置" />
            </td>
        </tr>
    </table>
</form>
</body>

</html>
