.class public Lcom/alipay/zoloz/android/phone/mrpc/core/IOUtil;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 13
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static InputStreamToByte(Ljava/io/InputStream;)[B
  .registers 4
  .prologue
  .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  :L0
  .line 59
    invoke-virtual { p0 }, Ljava/io/InputStream;->read()I
    move-result v1
    const/4 v2, -1
    if-eq v1, v2, :L1
  .line 60
    invoke-virtual { v0, v1 }, Ljava/io/ByteArrayOutputStream;->write(I)V
    goto :L0
  :L1
  .line 62
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v1
  .line 63
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->close()V
  .line 64
    return-object v1
.end method

.method public static closeStream(Ljava/io/Closeable;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 4
  .prologue
  .line 47
    if-eqz p0, :L1
  :L0
  .line 48
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
  .line 52
    return-void
  :L2
  .line 49
    move-exception v0
  .line 50
    const-string v1, "IOUtil"
    const-string v2, ""
    invoke-static { v1, v2, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .catchall { :L0 .. :L1 } :L10
  .catchall { :L3 .. :L4 } :L10
  .catch Ljava/io/IOException; { :L4 .. :L5 } :L9
  .catch Ljava/io/IOException; { :L6 .. :L7 } :L8
  .catch Ljava/io/IOException; { :L11 .. :L12 } :L13
  .registers 5
  .prologue
  .line 21
    new-instance v0, Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/InputStreamReader;
    invoke-direct { v1, p0 }, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct { v0, v1 }, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
  .line 22
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
  :L0
  .line 25
    invoke-virtual { v0 }, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L6
  .line 26
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
    goto :L0
  :L2
  .line 28
    move-exception v0
  :L3
  .line 29
    const-string v2, "IOUtil"
    const-string v3, ""
    invoke-static { v2, v3, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  :L4
  .line 32
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L5
  .line 37
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L6
  .line 32
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L7
    goto :L5
  :L8
  .line 33
    move-exception v0
  .line 34
    const-string v2, "IOUtil"
    const-string v3, ""
    invoke-static { v2, v3, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L5
  :L9
  .line 33
    move-exception v0
  .line 34
    const-string v2, "IOUtil"
    const-string v3, ""
    invoke-static { v2, v3, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L5
  :L10
  .line 31
    move-exception v0
  :L11
  .line 32
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L12
  .line 35
    throw v0
  :L13
  .line 33
    move-exception v1
  .line 34
    const-string v2, "IOUtil"
    const-string v3, ""
    invoke-static { v2, v3, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L12
.end method

.method public static fileToByte(Ljava/io/File;)[B
  .catchall { :L0 .. :L1 } :L1
  .catchall { :L2 .. :L3 } :L1
  .registers 7
  .prologue
  .line 69
    new-instance v1, Ljava/io/RandomAccessFile;
    const-string v0, "r"
    invoke-direct { v1, p0, v0 }, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
  :L0
  .line 72
    invoke-virtual { v1 }, Ljava/io/RandomAccessFile;->length()J
    move-result-wide v2
  .line 73
    long-to-int v0, v2
  .line 74
    int-to-long v4, v0
    cmp-long v2, v4, v2
    if-eqz v2, :L2
  .line 75
    new-instance v0, Ljava/io/IOException;
    const-string v2, "File size >= 2 GB"
    invoke-direct { v0, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 81
    move-exception v0
    invoke-virtual { v1 }, Ljava/io/RandomAccessFile;->close()V
    throw v0
  :L2
  .line 77
    new-array v0, v0, [B
  .line 78
    invoke-virtual { v1, v0 }, Ljava/io/RandomAccessFile;->readFully([B)V
  :L3
  .line 81
    invoke-virtual { v1 }, Ljava/io/RandomAccessFile;->close()V
  .line 79
    return-object v0
.end method
