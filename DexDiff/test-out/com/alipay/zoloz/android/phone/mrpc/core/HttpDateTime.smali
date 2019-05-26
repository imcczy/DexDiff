.class public final Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;
  }
.end annotation

.field private final static a:Ljava/util/regex/Pattern;

.field private final static b:Ljava/util/regex/Pattern;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 68
    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"
  .line 69
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->a:Ljava/util/regex/Pattern;
  .line 70
    const-string v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"
  .line 71
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->b:Ljava/util/regex/Pattern;
  .line 70
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 28
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Ljava/lang/String;)I
  .registers 4
  .prologue
    const/4 v2, 0
  .line 125
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 2
    if-ne v0, v1, :L1
  .line 126
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v0, v0, -48
    mul-int/lit8 v0, v0, 10
    const/4 v1, 1
  .line 127
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    add-int/2addr v0, v1
  :L0
  .line 129
    return v0
  :L1
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v0, v0, -48
    goto :L0
.end method

.method private static b(Ljava/lang/String;)I
  .registers 6
  .prologue
    const/4 v2, 2
    const/4 v1, 1
    const/4 v0, 0
  .line 148
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    invoke-static { v3 }, Ljava/lang/Character;->toLowerCase(C)C
    move-result v3
  .line 149
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v4
    invoke-static { v4 }, Ljava/lang/Character;->toLowerCase(C)C
    move-result v4
    add-int/2addr v3, v4
  .line 150
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v4
    invoke-static { v4 }, Ljava/lang/Character;->toLowerCase(C)C
    move-result v4
    add-int/2addr v3, v4
    add-int/lit16 v3, v3, -291
  .line 151
    sparse-switch v3, :L12
  .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;
    invoke-direct { v0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw v0
  :L0
    move v0, v1
  :L1
  .line 175
    return v0
  :L2
    move v0, v2
  .line 157
    goto :L1
  :L3
  .line 159
    const/4 v0, 3
    goto :L1
  :L4
  .line 161
    const/4 v0, 4
    goto :L1
  :L5
  .line 163
    const/4 v0, 5
    goto :L1
  :L6
  .line 165
    const/4 v0, 6
    goto :L1
  :L7
  .line 167
    const/4 v0, 7
    goto :L1
  :L8
  .line 169
    const/16 v0, 8
    goto :L1
  :L9
  .line 171
    const/16 v0, 9
    goto :L1
  :L10
  .line 173
    const/16 v0, 10
    goto :L1
  :L11
  .line 175
    const/16 v0, 11
    goto :L1
  .line 151
  :L12
  .sparse-switch
    9 -> :L11
    10 -> :L0
    22 -> :L1
    26 -> :L7
    29 -> :L2
    32 -> :L3
    35 -> :L9
    36 -> :L4
    37 -> :L8
    40 -> :L6
    42 -> :L5
    48 -> :L10
  .end sparse-switch
.end method

.method private static c(Ljava/lang/String;)I
  .registers 7
  .prologue
    const/4 v5, 3
    const/4 v4, 2
    const/4 v3, 1
    const/4 v2, 0
  .line 182
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-ne v0, v4, :L2
  .line 183
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v0, v0, -48
    mul-int/lit8 v0, v0, 10
  .line 184
    invoke-virtual { p0, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    add-int/2addr v0, v1
  .line 185
    const/16 v1, 70
    if-lt v0, v1, :L1
  .line 186
    add-int/lit16 v0, v0, 1900
  :L0
  .line 202
    return v0
  :L1
  .line 188
    add-int/lit16 v0, v0, 2000
    goto :L0
  :L2
  .line 190
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-ne v0, v5, :L3
  .line 192
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v0, v0, -48
    mul-int/lit8 v0, v0, 100
  .line 193
    invoke-virtual { p0, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    mul-int/lit8 v1, v1, 10
    add-int/2addr v0, v1
  .line 194
    invoke-virtual { p0, v4 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    add-int/2addr v0, v1
  .line 195
    add-int/lit16 v0, v0, 1900
    goto :L0
  :L3
  .line 196
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 4
    if-ne v0, v1, :L4
  .line 197
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v0, v0, -48
    mul-int/lit16 v0, v0, 1000
  .line 198
    invoke-virtual { p0, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    mul-int/lit8 v1, v1, 100
    add-int/2addr v0, v1
  .line 199
    invoke-virtual { p0, v4 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    mul-int/lit8 v1, v1, 10
    add-int/2addr v0, v1
  .line 200
    invoke-virtual { p0, v5 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    add-int/2addr v0, v1
  .line 197
    goto :L0
  :L4
  .line 202
    const/16 v0, 1970
    goto :L0
.end method

.method private static d(Ljava/lang/String;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;
  .registers 6
  .prologue
  .line 208
    const/4 v0, 0
  .line 209
    const/4 v2, 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v0, v0, -48
  .line 210
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v3, 58
    if-eq v1, v3, :L1
  .line 211
    mul-int/lit8 v0, v0, 10
    const/4 v1, 2
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    add-int/lit8 v2, v2, -48
    add-int/2addr v0, v2
  :L0
  .line 213
    add-int/lit8 v1, v1, 1
  .line 215
    add-int/lit8 v2, v1, 1
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    add-int/lit8 v1, v1, -48
    mul-int/lit8 v1, v1, 10
    add-int/lit8 v3, v2, 1
  .line 216
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    add-int/lit8 v2, v2, -48
    add-int/2addr v1, v2
  .line 218
    add-int/lit8 v2, v3, 1
  .line 220
    add-int/lit8 v3, v2, 1
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    add-int/lit8 v2, v2, -48
    mul-int/lit8 v2, v2, 10
    add-int/lit8 v4, v3, 1
  .line 221
    invoke-virtual { p0, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    add-int/lit8 v3, v3, -48
    add-int/2addr v2, v3
  .line 223
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;
    invoke-direct { v3, v0, v1, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;-><init>(III)V
    return-object v3
  :L1
    move v1, v2
    goto :L0
.end method

.method public static parse(Ljava/lang/String;)J
  .registers 10
  .prologue
    const/4 v8, 4
    const/4 v6, 3
    const/4 v3, 2
    const/4 v7, 0
    const/4 v4, 1
  .line 88
  .line 93
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->a:Ljava/util/regex/Pattern;
    invoke-virtual { v0, p0 }, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object v0
  .line 94
    invoke-virtual { v0 }, Ljava/util/regex/Matcher;->find()Z
    move-result v1
    if-eqz v1, :L2
  .line 95
    invoke-virtual { v0, v4 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->a(Ljava/lang/String;)I
    move-result v1
  .line 96
    invoke-virtual { v0, v3 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->b(Ljava/lang/String;)I
    move-result v5
  .line 97
    invoke-virtual { v0, v6 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->c(Ljava/lang/String;)I
    move-result v6
  .line 98
    invoke-virtual { v0, v8 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->d(Ljava/lang/String;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;
    move-result-object v0
    move-object v3, v0
    move v0, v1
  :L0
  .line 112
    const/16 v1, 2038
    if-lt v6, v1, :L4
  .line 113
    const/16 v6, 2038
    move v5, v7
  :L1
  .line 118
    new-instance v0, Landroid/text/format/Time;
    const-string v1, "UTC"
    invoke-direct { v0, v1 }, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V
  .line 119
    iget v1, v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;->second:I
    iget v2, v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;->minute:I
    iget v3, v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;->hour:I
    invoke-virtual/range { v0 .. v6 }, Landroid/text/format/Time;->set(IIIIII)V
  .line 121
    invoke-virtual { v0, v7 }, Landroid/text/format/Time;->toMillis(Z)J
    move-result-wide v0
    return-wide v0
  :L2
  .line 100
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->b:Ljava/util/regex/Pattern;
    invoke-virtual { v0, p0 }, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object v2
  .line 101
    invoke-virtual { v2 }, Ljava/util/regex/Matcher;->find()Z
    move-result v0
    if-eqz v0, :L3
  .line 102
    invoke-virtual { v2, v4 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->b(Ljava/lang/String;)I
    move-result v5
  .line 103
    invoke-virtual { v2, v3 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->a(Ljava/lang/String;)I
    move-result v1
  .line 104
    invoke-virtual { v2, v6 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->d(Ljava/lang/String;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime$TimeOfDay;
    move-result-object v0
  .line 105
    invoke-virtual { v2, v8 }, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->c(Ljava/lang/String;)I
    move-result v6
    move-object v3, v0
    move v0, v1
    goto :L0
  :L3
  .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;
    invoke-direct { v0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw v0
  :L4
    move v4, v0
    goto :L1
.end method
