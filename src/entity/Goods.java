package entity;

public class Goods {
    public int goodsId;
    public String userId;
    public String goodsName;
    public String goodsType;
    public String goodsPrice;
    public String goodsDescribe;
    public String goodsImage;
    public String goodsTime;


    public Goods(){}

    public Goods(int goodsId, String userId, String goodsName, String goodsType, String goodsPrice, String goodsDescribe, String goodsImage, String goodsTime) {
        this.goodsId = goodsId;
        this.userId = userId;
        this.goodsName = goodsName;
        this.goodsType = goodsType;
        this.goodsPrice = goodsPrice;
        this.goodsDescribe = goodsDescribe;
        this.goodsImage = goodsImage;
        this.goodsTime = goodsTime;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(String goodsType) {
        this.goodsType = goodsType;
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getGoodsDescribe() {
        return goodsDescribe;
    }

    public void setGoodsDescribe(String goodsDescribe) {
        this.goodsDescribe = goodsDescribe;
    }

    public String getGoodsImage() {
        return goodsImage;
    }

    public void setGoodsImage(String goodsImage) {
        this.goodsImage = goodsImage;
    }

    public String getGoodsTime() {
        return goodsTime;
    }

    public void setGoodsTime(String goodsTime) {
        this.goodsTime = goodsTime;
    }

    @Override
    public String toString(){
        return "Goods{"+"goodsId="+goodsId+","+"userId="+userId+","+"goodsName="+goodsName+","+"goodsType="+goodsType+","
                +"goodsPrice="+goodsPrice+","+"goodsDescribe="+goodsDescribe+","+"goodsImage="+goodsImage+","
                +"goodsTime"+goodsTime+"}";
    }

}
