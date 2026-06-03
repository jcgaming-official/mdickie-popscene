.class public abstract Lcom/distriqt/core/utils/ImageProcessing;
.super Ljava/lang/Object;
.source "ImageProcessing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeYUV420SPtoRedAvg([BII)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int v0, p1, p2

    .line 63
    invoke-static {p0, p1, p2}, Lcom/distriqt/core/utils/ImageProcessing;->decodeYUV420SPtoRedSum([BII)I

    move-result p0

    .line 64
    div-int/2addr p0, v0

    return p0
.end method

.method private static decodeYUV420SPtoRedSum([BII)I
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    mul-int v3, v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v1, :cond_a

    shr-int/lit8 v7, v4, 0x1

    mul-int v7, v7, v0

    add-int/2addr v7, v3

    move v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_9

    .line 20
    aget-byte v11, p0, v6

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v11, v11, -0x10

    if-gez v11, :cond_1

    const/4 v11, 0x0

    :cond_1
    and-int/lit8 v12, v5, 0x1

    if-nez v12, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 23
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v8, v8, -0x80

    add-int/lit8 v10, v9, 0x1

    .line 24
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v9, v9, -0x80

    move/from16 v16, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v16

    :cond_2
    mul-int/lit16 v11, v11, 0x4a8

    mul-int/lit16 v12, v9, 0x662

    add-int/2addr v12, v11

    mul-int/lit16 v13, v9, 0x341

    sub-int v13, v11, v13

    mul-int/lit16 v14, v10, 0x190

    sub-int/2addr v13, v14

    mul-int/lit16 v14, v10, 0x812

    add-int/2addr v11, v14

    const v14, 0x3ffff

    if-gez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    if-le v12, v14, :cond_4

    const v12, 0x3ffff

    :cond_4
    :goto_2
    if-gez v13, :cond_5

    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    if-le v13, v14, :cond_6

    const v13, 0x3ffff

    :cond_6
    :goto_3
    if-gez v11, :cond_7

    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    if-le v11, v14, :cond_8

    goto :goto_4

    :cond_8
    move v14, v11

    :goto_4
    const/high16 v11, -0x1000000

    shl-int/lit8 v12, v12, 0x6

    const/high16 v15, 0xff0000

    and-int/2addr v12, v15

    or-int/2addr v11, v12

    shr-int/lit8 v12, v13, 0x2

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    shr-int/lit8 v12, v14, 0xa

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v7, v11

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_a
    return v5
.end method
