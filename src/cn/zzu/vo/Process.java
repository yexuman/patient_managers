package cn.zzu.vo;
public class Process {

    private float proId;
    private String proName;
    private float proPhysicalMEM;
    private float proVirtualMEM;
    private float iowrite;
    private float ioread;
    private float proUseCPU;
    public void setProId(float proId) {
         this.proId = proId;
     }
     public float getProId() {
         return proId;
     }

    public void setProName(String proName) {
         this.proName = proName;
     }
     public String getProName() {
         return proName;
     }

    public void setProPhysicalMEM(float proPhysicalMEM) {
         this.proPhysicalMEM = proPhysicalMEM;
     }
     public float getProPhysicalMEM() {
         return proPhysicalMEM;
     }

    public void setProVirtualMEM(float proVirtualMEM) {
         this.proVirtualMEM = proVirtualMEM;
     }
     public float getProVirtualMEM() {
         return proVirtualMEM;
     }

    public void setIowrite(float iowrite) {
         this.iowrite = iowrite;
     }
     public float getIowrite() {
         return iowrite;
     }

    public void setIoread(float ioread) {
         this.ioread = ioread;
     }
     public float getIoread() {
         return ioread;
     }

    public void setProUseCPU(float proUseCPU) {
         this.proUseCPU = proUseCPU;
     }
     public float getProUseCPU() {
         return proUseCPU;
     }

}