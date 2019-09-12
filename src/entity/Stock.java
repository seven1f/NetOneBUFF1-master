package entity;

public class Stock {
    public String userId;
    public int goodsId;
    public int goodsStatus;

    public Stock(){}
    public Stock(String userId, int goodsId, int goodsStatus) {
        this.userId = userId;
        this.goodsId = goodsId;
        this.goodsStatus = goodsStatus;
    }

    @Override
    public String toString() {
        return "Stock{" +
                "userId='" + userId + '\'' +
                ", goodsId=" + goodsId +
                ", goodsStatus=" + goodsStatus +
                '}';
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public int getGoodsStatus() {
        return goodsStatus;
    }

    public void setGoodsStatus(int goodsStatus) {
        this.goodsStatus = goodsStatus;
    }
}
