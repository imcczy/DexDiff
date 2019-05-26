.class public Lcom/alipay/zoloz/hardware/HardwareMetaInfo;
.super Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
.source "SourceFile"

.annotation build Lcom/alipay/biometrics/common/annotation/NotProguard;
.end annotation

.field public final static ASTRA_PRO_ISP_SERVICE:Ljava/lang/String; = "com.alipay.zoloz.hardware.isp.AstraProIspService"

.method public constructor <init>()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 3
  .prologue
  .line 20
    invoke-direct { p0 }, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;-><init>()V
  .line 21
    const-string v0, ""
    const-string v1, "AstraPro"
    invoke-static { v0, v1 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 23
    const-string v0, "com.alipay.zoloz.hardware.isp.AstraProIspService"
  .line 24
    new-instance v1, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    invoke-direct { v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V
  .line 25
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v1, v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V
  .line 26
    const-class v0, Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V
  .line 27
    invoke-virtual { p0, v1 }, Lcom/alipay/zoloz/hardware/HardwareMetaInfo;->addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V
  :L1
  .line 32
    return-void
  :L2
  .line 28
    move-exception v0
  .line 29
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
    goto :L1
.end method
