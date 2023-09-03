package Bean;

public class meeting {
    private String id;
    private String MeetingID;//会议ID
    private String MeetingName;//会议主题
    private String MeetingContent;//会议内容
    private String MeetingBegin;//会议开始时间
    private String MeetingEnd;//会议结束时间
    private String MeetingNum;//参会人数
    private String Participants;//参会人员
    private String MeetroomId;//预约会议室编号
    private String UserID;//申请人编号
    private String AuditStatus;//审核状态
    private String AuditMind;//审核意见

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMeetingID() {
        return MeetingID;
    }

    public void setMeetingID(String meetingID) {
        MeetingID = meetingID;
    }

    public String getMeetingName() {
        return MeetingName;
    }

    public void setMeetingName(String meetingName) {
        MeetingName = meetingName;
    }

    public String getMeetingContent() {
        return MeetingContent;
    }

    public void setMeetingContent(String meetingContent) {
        MeetingContent = meetingContent;
    }

    public String getMeetingBegin() {
        return MeetingBegin;
    }

    public void setMeetingBegin(String meetingBegin) {
        MeetingBegin = meetingBegin;
    }

    public String getMeetingEnd() {
        return MeetingEnd;
    }

    public void setMeetingEnd(String meetingEnd) {
        MeetingEnd = meetingEnd;
    }

    public String getMeetingNum() {
        return MeetingNum;
    }

    public void setMeetingNum(String meetingNum) {
        MeetingNum = meetingNum;
    }

    public String getParticipants() {
        return Participants;
    }

    public void setParticipants(String participants) {
        Participants = participants;
    }

    public String getMeetroomId() {
        return MeetroomId;
    }

    public void setMeetroomId(String meetroomId) {
        MeetroomId = meetroomId;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String userID) {
        UserID = userID;
    }

    public String getAuditStatus() {
        return AuditStatus;
    }

    public void setAuditStatus(String auditStatus) {
        AuditStatus = auditStatus;
    }

    public String getAuditMind() {
        return AuditMind;
    }

    public void setAuditMind(String auditMind) {
        AuditMind = auditMind;
    }
}
