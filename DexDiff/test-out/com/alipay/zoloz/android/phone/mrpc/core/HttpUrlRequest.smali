.class public Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
.super Lcom/alipay/zoloz/android/phone/mrpc/core/Request;
.source "SourceFile"

.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList",
      "<",
      "Lorg/apache/http/Header;",
      ">;"
    }
  .end annotation
.end field

.field private e:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private f:Z

.method public constructor <init>(Ljava/lang/String;)V
  .registers 3
  .prologue
  .line 47
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;-><init>()V
  .line 48
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
  .line 49
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;
  .line 50
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
  .line 51
    const-string v0, "application/x-www-form-urlencoded"
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;
  .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "[B",
      "Ljava/util/ArrayList",
      "<",
      "Lorg/apache/http/Header;",
      ">;",
      "Ljava/util/HashMap",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 63
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;-><init>()V
  .line 64
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
  .line 65
    iput-object p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->b:[B
  .line 66
    iput-object p3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;
  .line 67
    iput-object p4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
  .line 68
    const-string v0, "application/x-www-form-urlencoded"
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;
  .line 69
    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
  .registers 3
  .prologue
  .line 144
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 145
    return-void
.end method

.method public addTags(Ljava/lang/String;Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 175
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
    if-nez v0, :L0
  .line 176
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
  :L0
  .line 178
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
    invoke-interface { v0, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 179
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
  .prologue
    const/4 v0, 1
    const/4 v1, 0
  .line 225
    if-ne p0, p1, :L1
  :L0
  .line 242
    return v0
  :L1
  .line 227
    if-nez p1, :L2
    move v0, v1
  .line 228
    goto :L0
  :L2
  .line 229
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    if-eq v2, v3, :L3
    move v0, v1
  .line 230
    goto :L0
  :L3
  .line 231
    check-cast p1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
  .line 232
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->b:[B
    if-nez v2, :L4
  .line 233
    iget-object v2, p1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->b:[B
    if-eqz v2, :L5
    move v0, v1
  .line 234
    goto :L0
  :L4
  .line 235
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->b:[B
    iget-object v3, p1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->b:[B
    invoke-virtual { v2, v3 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L5
    move v0, v1
  .line 236
    goto :L0
  :L5
  .line 237
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    if-nez v2, :L6
  .line 238
    iget-object v2, p1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    if-eqz v2, :L0
    move v0, v1
  .line 239
    goto :L0
  :L6
  .line 240
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L0
    move v0, v1
  .line 241
    goto :L0
.end method

.method public getContentType()Ljava/lang/String;
  .registers 2
  .prologue
  .line 114
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;
    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList",
      "<",
      "Lorg/apache/http/Header;",
      ">;"
    }
  .end annotation
  .registers 2
  .prologue
  .line 153
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
  .registers 3
  .prologue
  .line 202
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getReqData()[B
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->hashCode()I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public getReqData()[B
  .registers 2
  .prologue
  .line 95
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->b:[B
    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
  .registers 3
  .prologue
  .line 187
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
    if-nez v0, :L1
  .line 188
    const/4 v0, 0
  :L0
  .line 190
    return-object v0
  :L1
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    goto :L0
.end method

.method public getUrl()Ljava/lang/String;
  .registers 2
  .prologue
  .line 77
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    return-object v0
.end method

.method public hashCode()I
  .registers 4
  .prologue
  .line 212
  .line 213
    const/4 v0, 1
  .line 215
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
    if-eqz v1, :L0
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
    const-string v2, "id"
    invoke-interface { v1, v2 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 216
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
    const-string v1, "id"
    invoke-interface { v0, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    add-int/lit8 v0, v0, 31
  :L0
  .line 219
    mul-int/lit8 v1, v0, 31
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    if-nez v0, :L2
    const/4 v0, 0
  :L1
    add-int/2addr v0, v1
  .line 220
    return v0
  :L2
  .line 219
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    goto :L1
.end method

.method public isResetCookie()Z
  .registers 2
  .prologue
  .line 194
    iget-boolean v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->f:Z
    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 124
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;
  .line 125
    return-void
.end method

.method public setHeaders(Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList",
      "<",
      "Lorg/apache/http/Header;",
      ">;)V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 134
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;
  .line 135
    return-void
.end method

.method public setReqData([B)V
  .registers 2
  .prologue
  .line 105
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->b:[B
  .line 106
    return-void
.end method

.method public setResetCookie(Z)V
  .registers 2
  .prologue
  .line 198
    iput-boolean p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->f:Z
  .line 199
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 163
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;
  .line 164
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .prologue
  .line 86
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;
    return-object p1
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .prologue
  .line 207
    const-string v0, "Url : %s,HttpHeader: %s"
    const/4 v1, 2
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 1
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;
    move-result-object v3
    aput-object v3, v1, v2
    invoke-static { v0, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
