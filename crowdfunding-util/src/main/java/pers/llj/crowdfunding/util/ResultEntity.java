package pers.llj.crowdfunding.util;

public class ResultEntity<T> {

    private ResultEntityStatus status;
    private String message;
    private T data;

    enum ResultEntityStatus{
        SUCCESS,ERROR
    }

    public static <T> ResultEntity<T> success(T data){
        return new ResultEntity<>(ResultEntityStatus.SUCCESS, null, data);
    }

    public static ResultEntity<Object> error(String message){
        return new ResultEntity<>(ResultEntityStatus.ERROR, message, null);
    }

    public ResultEntity(ResultEntityStatus status, String message, T data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    public ResultEntityStatus getStatus() {
        return status;
    }

    public void setStatus(ResultEntityStatus status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "ResultEntity{" +
                "status=" + status +
                ", message='" + message + '\'' +
                ", data=" + data +
                '}';
    }
}
