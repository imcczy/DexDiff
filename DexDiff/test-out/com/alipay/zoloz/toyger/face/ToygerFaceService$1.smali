.class Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;

.field final synthetic val$faceCallback:Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;

.field final synthetic val$toygerConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;

.method constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Landroid/content/Context;Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;)V
  .registers 6
  .prologue
  .line 216
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$context:Landroid/content/Context;
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$toygerConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;
    iput-object p5, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$faceCallback:Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .prologue
    const/4 v5, 0
  .line 219
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 221
    const-string v1, "StateSignature"
    const-class v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "."
    const-string v4, "/"
    invoke-virtual { v2, v3, v4 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 222
    const-string v1, "AttrSignature"
    const-class v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "."
    const-string v4, "/"
    invoke-virtual { v2, v3, v4 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 223
    const-string v1, "FrameSignature"
    const-class v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "."
    const-string v4, "/"
    invoke-virtual { v2, v3, v4 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 224
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$context:Landroid/content/Context;
    invoke-static { }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$000()[B
    move-result-object v2
    invoke-static { }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$100()Ljava/lang/String;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$context:Landroid/content/Context;
    invoke-virtual { v4 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v4
    invoke-static { v1, v2, v3, v4, v0 }, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->init(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    move-result v0
  .line 225
    const-string v1, "TOYGER"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Toyger.init() return : initResult="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 227
    invoke-static { v5 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$002([B)[B
  .line 229
    if-eqz v0, :L1
  .line 230
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$toygerConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->config(Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;)V
  .line 231
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$200(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  :L0
  .line 235
    return-void
  :L1
  .line 233
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;->val$faceCallback:Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
    const/4 v1, -4
    invoke-interface { v0, v1, v5 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;->onEvent(ILjava/util/Map;)Z
    goto :L0
.end method
