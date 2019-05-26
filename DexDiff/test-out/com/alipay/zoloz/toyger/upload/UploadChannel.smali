.class public abstract Lcom/alipay/zoloz/toyger/upload/UploadChannel;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 12
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public abstract uploadBehaviourLog(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadNineShoot(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
.end method
