.class public final Lcom/alipay/zoloz/android/phone/mrpc/core/MiscUtils;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static RC_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphoneRC"

.field private static a:Ljava/lang/Boolean;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 20
    const/4 v0, 0
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/MiscUtils;->a:Ljava/lang/Boolean;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 27
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 28
    return-void
.end method

.method public final static isDebugger(Landroid/content/Context;)Z
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L5
  .registers 5
  .prologue
    const/4 v0, 0
  .line 33
    sget-object v1, Lcom/alipay/zoloz/android/phone/mrpc/core/MiscUtils;->a:Ljava/lang/Boolean;
    if-eqz v1, :L1
  .line 34
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/MiscUtils;->a:Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
  :L0
  .line 46
    return v0
  :L1
  .line 38
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
  .line 39
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    move-result-object v1
  .line 40
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    and-int/lit8 v1, v1, 2
    if-eqz v1, :L4
    const/4 v1, 1
  :L2
    invoke-static { v1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    sput-object v1, Lcom/alipay/zoloz/android/phone/mrpc/core/MiscUtils;->a:Ljava/lang/Boolean;
  .line 41
    sget-object v1, Lcom/alipay/zoloz/android/phone/mrpc/core/MiscUtils;->a:Ljava/lang/Boolean;
    invoke-virtual { v1 }, Ljava/lang/Boolean;->booleanValue()Z
  :L3
    move-result v0
    goto :L0
  :L4
    move v1, v0
  .line 40
    goto :L2
  :L5
  .line 42
    move-exception v1
  .line 43
    const-string v2, "MiscUtils"
    const-string v3, ""
    invoke-static { v2, v3, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L0
.end method
