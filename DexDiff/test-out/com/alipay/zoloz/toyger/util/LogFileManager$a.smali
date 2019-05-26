.class Lcom/alipay/zoloz/toyger/util/LogFileManager$a;
.super Ljava/lang/Object;
.implements Ljava/io/FilenameFilter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/toyger/util/LogFileManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.method constructor <init>()V
  .registers 1
  .prologue
  .line 82
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
  .registers 4
  .prologue
  .line 85
    const-string v0, ".bin"
    invoke-virtual { p2, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    return v0
.end method
