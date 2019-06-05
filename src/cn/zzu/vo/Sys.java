package cn.zzu.vo;





public class Sys {


   private float usedCPU;
   private float usedMEM;
   private float virtualMEM;
   private float writeDISK;
   private float readDISK;
   private float currRecieveNET;
   private float currSendNET;
   public void setUsedCPU(float usedCPU) {
        this.usedCPU = usedCPU;
    }
    public float getUsedCPU() {
        return usedCPU;
    }

   public void setUsedMEM(float usedMEM) {
        this.usedMEM = usedMEM;
    }
    public float getUsedMEM() {
        return usedMEM;
    }

   public void setVirtualMEM(float virtualMEM) {
        this.virtualMEM = virtualMEM;
    }
    public float getVirtualMEM() {
        return virtualMEM;
    }

   public void setWriteDISK(float wirteDISK) {
        this.writeDISK = wirteDISK;
    }
    public float getWriteDISK() {
        return writeDISK;
    }

   public void setReadDISK(float readDISK) {
        this.readDISK = readDISK;
    }
    public float getReadDISK() {
        return readDISK;
    }

   public void setCurrRecieveNET(float currRecieveNET) {
        this.currRecieveNET = currRecieveNET;
    }
    public float getCurrRecieveNET() {
        return currRecieveNET;
    }

   public void setCurrSendNET(float currSendNET) {
        this.currSendNET = currSendNET;
    }
    public float getCurrSendNET() {
        return currSendNET;
    }

}