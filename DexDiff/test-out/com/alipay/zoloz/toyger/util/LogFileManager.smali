.class public final Lcom/alipay/zoloz/toyger/util/LogFileManager;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/toyger/util/LogFileManager$a;
  }
.end annotation

.field private final static FILE_NAME_FORMAT:Ljava/lang/String; = "%s_%04d_%s.bin"

.field private static counter:I

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 21
    const/4 v0, 0
    sput v0, Lcom/alipay/zoloz/toyger/util/LogFileManager;->counter:I
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 28
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 29
    return-void
.end method

.method public static saveFile(Ljava/lang/String;[B)Z
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L12
  .catch Ljava/lang/Throwable; { :L2 .. :L4 } :L9
  .catch Ljava/lang/Throwable; { :L7 .. :L11 } :L12
  .registers 14
  .prologue
    const/4 v2, 1
    const/4 v0, 0
  :L0
  .line 39
  .line 41
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v3, "%s_%04d_%s.bin"
    const/4 v4, 3
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
  .line 42
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    invoke-static { v6, v7 }, Lcom/alipay/mobile/security/bio/utils/DateUtil;->getDateFormat(J)Ljava/lang/String;
    move-result-object v6
    aput-object v6, v4, v5
    const/4 v5, 1
    sget v6, Lcom/alipay/zoloz/toyger/util/LogFileManager;->counter:I
    div-int/lit8 v6, v6, 2
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    aput-object v6, v4, v5
    const/4 v5, 2
    aput-object p0, v4, v5
  .line 41
    invoke-static { v1, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
  .line 45
    new-instance v4, Ljava/io/File;
    invoke-static { }, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v5, "Download"
    invoke-direct { v4, v1, v5 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 46
    invoke-virtual { v4 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L10
  .line 47
    sget v1, Lcom/alipay/zoloz/toyger/util/LogFileManager;->counter:I
  :L1
    if-nez v1, :L13
  :L2
  .line 49
    new-instance v1, Lcom/alipay/zoloz/toyger/util/LogFileManager$a;
    invoke-direct { v1 }, Lcom/alipay/zoloz/toyger/util/LogFileManager$a;-><init>()V
    invoke-virtual { v4, v1 }, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    move-result-object v5
  .line 50
    if-eqz v5, :L5
    array-length v1, v5
    if-lez v1, :L5
  .line 51
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
  .line 52
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;
    const-wide/16 v8, 3
    invoke-virtual { v1, v8, v9 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v8
    sub-long/2addr v6, v8
  .line 53
    array-length v8, v5
    move v1, v0
  :L3
    if-ge v1, v8, :L5
    aget-object v9, v5, v1
  .line 54
    invoke-virtual { v9 }, Ljava/io/File;->lastModified()J
    move-result-wide v10
    cmp-long v10, v10, v6
    if-gez v10, :L4
  .line 55
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct { v10 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "Delete File : "
    invoke-virtual { v10, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v10
    invoke-virtual { v10, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v10
    invoke-virtual { v10 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    invoke-static { v10 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 56
    invoke-virtual { v9 }, Ljava/io/File;->delete()Z
    move-result v10
    if-eqz v10, :L4
  .line 57
    invoke-virtual { v9 }, Ljava/io/File;->deleteOnExit()V
  :L4
  .line 53
    add-int/lit8 v1, v1, 1
    goto :L3
  :L5
    move v1, v2
  :L6
  .line 70
    if-eqz v1, :L8
  :L7
  .line 71
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, v4, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 72
    invoke-static { v1, p1 }, Lcom/alipay/mobile/security/bio/utils/FileUtil;->save(Ljava/io/File;[B)Z
    move-result v0
  .line 73
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Save file : "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", bRet="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V
  .line 74
    sget v1, Lcom/alipay/zoloz/toyger/util/LogFileManager;->counter:I
    add-int/lit8 v1, v1, 1
    sput v1, Lcom/alipay/zoloz/toyger/util/LogFileManager;->counter:I
  :L8
  .line 79
    return v0
  :L9
  .line 62
    move-exception v1
  .line 63
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    move v1, v2
  .line 64
    goto :L6
  :L10
  .line 67
    invoke-virtual { v4 }, Ljava/io/File;->mkdirs()Z
  :L11
    move-result v1
    goto :L6
  :L12
  .line 76
    move-exception v1
  .line 77
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    goto :L8
  :L13
    move v1, v2
    goto :L6
.end method
