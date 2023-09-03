package Bean;

public class room {
    private int id;
    private String MeetroomId; //会议室编号
    private String MeetroomName;//会议室名称
    private String Address;//会议室地址
    private String ReadyState;//可用状态
    private String Status;//目前状态
    private String Capacity;//容纳人数

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMeetroomId() {
        return MeetroomId;
    }

    public void setMeetroomId(String meetroomId) {
        MeetroomId = meetroomId;
    }

    public String getMeetroomName() {
        return MeetroomName;
    }

    public void setMeetroomName(String meetroomName) {
        MeetroomName = meetroomName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getReadyState() {
        return ReadyState;
    }

    public void setReadyState(String readyState) {
        ReadyState = readyState;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public String getCapacity() {
        return Capacity;
    }

    public void setCapacity(String capacity) {
        Capacity = capacity;
    }
}
