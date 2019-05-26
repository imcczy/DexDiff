.class public Lcom/alipay/zoloz/android/phone/mrpc/core/NetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static NETWORK_TYPE_2G:I = 1

.field public final static NETWORK_TYPE_3G_4G:I = 2

.field public final static NETWORK_TYPE_INVALID:I = 0

.field public final static NETWORK_TYPE_LTE:I = 13

.field public final static NETWORK_TYPE_WIFI:I = 3

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 19
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Landroid/net/NetworkInfo;)Z
  .registers 4
  .prologue
    const/4 v1, 1
    const/4 v0, 0
  .line 41
    if-nez p0, :L1
  :L0
  .line 78
    return v0
  :L1
  .line 44
    invoke-virtual { p0 }, Landroid/net/NetworkInfo;->getSubtype()I
    move-result v2
    packed-switch v2, :L10
  :L2
    goto :L0
  :L3
    move v0, v1
  .line 64
    goto :L0
  :L4
    move v0, v1
  .line 52
    goto :L0
  :L5
    move v0, v1
  .line 54
    goto :L0
  :L6
    move v0, v1
  .line 58
    goto :L0
  :L7
    move v0, v1
  .line 60
    goto :L0
  :L8
    move v0, v1
  .line 62
    goto :L0
  :L9
    move v0, v1
  .line 74
    goto :L0
  .line 44
  :L10
  .packed-switch 0
    :L0
    :L0
    :L0
    :L3
    :L0
    :L4
    :L5
    :L0
    :L6
    :L8
    :L7
    :L0
    :L2
    :L9
  .end packed-switch
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
  .registers 2
  .prologue
  .line 130
    const-string v0, "connectivity"
  .line 131
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/ConnectivityManager;
  .line 132
    invoke-virtual { v0 }, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    move-result-object v0
    return-object v0
.end method

.method public static getNetType(Landroid/content/Context;)I
  .registers 2
  .prologue
  .line 139
    const-string v0, "connectivity"
  .line 140
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/ConnectivityManager;
  .line 141
    invoke-virtual { v0 }, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    move-result-object v0
  .line 142
    if-nez v0, :L1
  .line 143
    const/4 v0, -1
  :L0
  .line 144
    return v0
  :L1
    invoke-virtual { v0 }, Landroid/net/NetworkInfo;->getType()I
    move-result v0
    goto :L0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
  .registers 5
  .prologue
    const/4 v2, 1
    const/4 v1, 0
  .line 88
    const-string v0, "connectivity"
  .line 89
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/ConnectivityManager;
  .line 90
    invoke-virtual { v0 }, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    move-result-object v0
  .line 91
    if-eqz v0, :L4
  .line 92
    invoke-virtual { v0 }, Landroid/net/NetworkInfo;->isConnected()Z
    move-result v3
  .line 93
    if-nez v3, :L1
    move v0, v1
  :L0
  .line 107
    return v0
  :L1
  .line 96
    invoke-virtual { v0 }, Landroid/net/NetworkInfo;->getType()I
    move-result v3
  .line 97
    if-ne v3, v2, :L2
  .line 98
    const/4 v0, 3
    goto :L0
  :L2
  .line 99
    if-nez v3, :L4
  .line 100
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/NetworkUtils;->a(Landroid/net/NetworkInfo;)Z
    move-result v0
    if-eqz v0, :L3
  .line 101
    const/4 v0, 2
    goto :L0
  :L3
    move v0, v2
  .line 103
    goto :L0
  :L4
    move v0, v1
  .line 107
    goto :L0
.end method

.method public static getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
  .registers 4
  .prologue
  .line 117
    const/4 v0, 0
  .line 118
    invoke-static { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    move-result-object v1
  .line 119
    if-eqz v1, :L0
    invoke-virtual { v1 }, Landroid/net/NetworkInfo;->isAvailable()Z
    move-result v1
    if-eqz v1, :L0
  .line 120
    invoke-static { }, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    move-result-object v1
  .line 121
    invoke-static { }, Landroid/net/Proxy;->getDefaultPort()I
    move-result v2
  .line 122
    if-eqz v1, :L0
  .line 123
    new-instance v0, Lorg/apache/http/HttpHost;
    invoke-direct { v0, v1, v2 }, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
  :L0
  .line 126
    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
  .registers 7
  .prologue
    const/4 v1, 0
  .line 153
  .line 154
    const-string v0, "connectivity"
  .line 155
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;
  .line 156
    invoke-virtual { v0 }, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    move-result-object v2
  .line 157
    if-nez v2, :L1
  :L0
  .line 169
    return v1
  :L1
  .line 160
    array-length v3, v2
    move v0, v1
  :L2
    if-ge v0, v3, :L5
    aget-object v4, v2, v0
  .line 161
    if-eqz v4, :L4
  .line 162
    invoke-virtual { v4 }, Landroid/net/NetworkInfo;->isAvailable()Z
    move-result v5
    if-eqz v5, :L4
    invoke-virtual { v4 }, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    move-result v4
    if-eqz v4, :L4
  .line 163
    const/4 v0, 1
  :L3
    move v1, v0
  .line 169
    goto :L0
  :L4
  .line 160
    add-int/lit8 v0, v0, 1
    goto :L2
  :L5
    move v0, v1
    goto :L3
.end method
