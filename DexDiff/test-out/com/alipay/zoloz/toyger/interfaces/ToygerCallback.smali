.class public interface abstract Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

.method public abstract alert(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V
.end method

.method public abstract finishActivity(Z)V
.end method

.method public abstract getAlertTag()Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
.end method

.method public abstract getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
.end method

.method public abstract getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
.end method

.method public abstract getRetryTime()I
.end method

.method public abstract getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
.end method

.method public abstract gotoSettings()V
.end method

.method public abstract haveCameraPermission()Z
.end method

.method public abstract sendAvatarResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
.end method

.method public abstract sendProgressResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
.end method

.method public abstract sendResponse(I)V
.end method

.method public abstract sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
.end method

.method public abstract setCameraPermission(Z)V
.end method

.method public abstract setRetryTime(I)V
.end method
