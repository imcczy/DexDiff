.class public Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

.field protected isRunning:Z

.field private mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field private mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;

.field private mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;

.field private mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;

.field private mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;

.field private mWorkspaceHandler:Landroid/os/Handler;

.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;Landroid/os/Handler;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Lcom/alipay/zoloz/toyger/upload/UploadManager;)V
  .registers 8
  .prologue
  .line 30
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 31
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
  .line 32
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
  .line 33
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mWorkspaceHandler:Landroid/os/Handler;
  .line 34
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioTaskService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
  .line 35
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 36
    iput-object p5, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
  .line 37
    return-void
.end method

.method private clearTask()V
  .registers 4
  .prologue
  .line 59
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    if-eqz v0, :L2
  .line 60
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getTasks()Ljava/util/Vector;
    move-result-object v0
  .line 62
    invoke-virtual { v0 }, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/task/SubTask;
  .line 63
    instance-of v2, v0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
    if-eqz v2, :L0
  .line 64
    check-cast v0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
  .line 65
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->stop()V
    goto :L0
  :L1
  .line 69
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioTaskService;->clearTask()V
  :L2
  .line 71
    return-void
.end method

.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .registers 3
  .prologue
  .line 53
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    if-eqz v0, :L0
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->isRunning:Z
    if-eqz v0, :L0
  .line 54
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v0, p1 }, Lcom/alipay/mobile/security/bio/service/BioTaskService;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  :L0
  .line 56
    return-void
.end method

.method public destroy()V
  .registers 3
  .prologue
    const/4 v1, 0
  .line 74
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->clearTask()V
  .line 75
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->isRunning:Z
  .line 76
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
  .line 77
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
  .line 78
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mWorkspaceHandler:Landroid/os/Handler;
  .line 79
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
  .line 80
    return-void
.end method

.method public resetTask()V
  .registers 6
  .prologue
  .line 40
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->isRunning:Z
  .line 41
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->clearTask()V
  .line 42
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mWorkspaceHandler:Landroid/os/Handler;
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-direct { v0, v1, v2, v3, v4 }, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;Landroid/os/Handler;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;)V
  .line 44
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->setUploadManager(Lcom/alipay/zoloz/toyger/upload/UploadManager;)V
  .line 45
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    if-eqz v1, :L0
  .line 46
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v1, v0 }, Lcom/alipay/mobile/security/bio/service/BioTaskService;->addTask(Lcom/alipay/mobile/security/bio/task/SubTask;)V
  .line 47
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioTaskService;->initAndBegin()V
  :L0
  .line 49
    return-void
.end method
