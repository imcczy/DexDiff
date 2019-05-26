.class Lcom/alipay/zoloz/toyger/workspace/k;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

.field final synthetic c:Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;

.field final synthetic d:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .registers 5
  .prologue
  .line 752
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/k;->d:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/k;->a:Landroid/graphics/Bitmap;
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/workspace/k;->b:Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/workspace/k;->c:Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .prologue
  .line 756
    invoke-static { }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$500()I
    move-result v0
    int-to-long v0, v0
    invoke-static { v0, v1 }, Ljava/lang/Thread;->sleep(J)V
  .line 757
    const-string v0, "zolozTime"
    const-string v1, "gen avatar!"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 758
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/k;->a:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/k;->b:Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/util/Avatar;->genAvatar(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)Ljava/lang/String;
    move-result-object v0
  .line 759
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/k;->c:Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    iget-object v1, v1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;
    const-string v2, "avatar"
    invoke-interface { v1, v2, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 760
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/k;->c:Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/k;->d:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$600(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    move-result-object v1
    invoke-interface { v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;
  .line 761
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/k;->d:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$600(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/k;->c:Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendAvatarResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .line 762
    const-string v0, "zolozTime"
    const-string v1, "send avatar!"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  :L1
  .line 766
    return-void
  :L2
  .line 763
    move-exception v0
  .line 764
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    goto :L1
.end method
