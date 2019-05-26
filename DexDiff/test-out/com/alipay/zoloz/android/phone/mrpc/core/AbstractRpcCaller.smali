.class public abstract Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/android/phone/mrpc/core/RpcCaller;
.source "SourceFile"

.field protected mContentType:Ljava/lang/String;

.field protected mId:I

.field protected mMethod:Ljava/lang/reflect/Method;

.field protected mOperationType:Ljava/lang/String;

.field protected mReqData:[B

.field protected mResetCookie:Z

.method public constructor <init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V
  .registers 7
  .prologue
  .line 44
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 45
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;->mMethod:Ljava/lang/reflect/Method;
  .line 46
    iput p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;->mId:I
  .line 47
    iput-object p3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;->mOperationType:Ljava/lang/String;
  .line 48
    iput-object p4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;->mReqData:[B
  .line 49
    iput-object p5, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;->mContentType:Ljava/lang/String;
  .line 50
    iput-boolean p6, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;->mResetCookie:Z
  .line 51
    return-void
.end method
