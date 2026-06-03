.class public Lcom/distriqt/core/utils/ImageConversion;
.super Ljava/lang/Object;
.source "ImageConversion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BGRA_TO_ARGB(I)I
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static JPEG_TO_RGB([B[BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x800

    if-gt p2, v0, :cond_2

    if-gt p3, v0, :cond_2

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 80
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 82
    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    mul-int p1, p2, p3

    .line 84
    new-array p1, p1, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p2

    move v9, p2

    move v10, p3

    .line 85
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    mul-int v3, p2, v0

    move v4, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    add-int v5, v3, v2

    .line 94
    aget v5, p1, v5

    add-int/lit8 v6, v4, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    .line 96
    aput-byte v7, p0, v4

    add-int/lit8 v4, v6, 0x1

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 97
    aput-byte v7, p0, v6

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 98
    aput-byte v7, p0, v4

    add-int/lit8 v4, v6, 0x1

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 99
    aput-byte v5, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    return-void

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Image is too large to store in memory"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    nop

    goto :goto_2
.end method

.method public static YUV_NV21_TO_RGB([B[BII)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    move v8, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v0, :cond_7

    mul-int v9, v5, v0

    add-int/2addr v9, v7

    .line 48
    aget-byte v9, p1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    shr-int/lit8 v11, v5, 0x1

    mul-int v11, v11, v0

    add-int/2addr v11, v2

    and-int/lit8 v12, v7, -0x2

    add-int/2addr v11, v12

    add-int/lit8 v12, v11, 0x0

    .line 49
    aget-byte v12, p1, v12

    and-int/2addr v12, v10

    add-int/lit8 v11, v11, 0x1

    .line 50
    aget-byte v11, p1, v11

    and-int/2addr v11, v10

    const/16 v13, 0x10

    if-ge v9, v13, :cond_0

    const/16 v9, 0x10

    :cond_0
    const v14, 0x3f94fdf4    # 1.164f

    sub-int/2addr v9, v13

    int-to-float v9, v9

    mul-float v9, v9, v14

    const v13, 0x3fcc49ba    # 1.596f

    add-int/lit8 v12, v12, -0x80

    int-to-float v12, v12

    mul-float v13, v13, v12

    add-float/2addr v13, v9

    float-to-int v13, v13

    const v14, 0x3f5020c5    # 0.813f

    mul-float v12, v12, v14

    sub-float v12, v9, v12

    const v14, 0x3ec83127    # 0.391f

    add-int/lit8 v11, v11, -0x80

    int-to-float v11, v11

    mul-float v14, v14, v11

    sub-float/2addr v12, v14

    float-to-int v12, v12

    const v14, 0x400126e9    # 2.018f

    mul-float v11, v11, v14

    add-float/2addr v9, v11

    float-to-int v9, v9

    if-gez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_2

    :cond_1
    if-le v13, v10, :cond_2

    const/16 v13, 0xff

    :cond_2
    :goto_2
    if-gez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    if-le v12, v10, :cond_4

    const/16 v12, 0xff

    :cond_4
    :goto_3
    if-gez v9, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    if-le v9, v10, :cond_6

    goto :goto_4

    :cond_6
    move v10, v9

    :goto_4
    add-int/lit8 v9, v8, 0x1

    int-to-byte v10, v10

    .line 63
    aput-byte v10, p0, v8

    add-int/lit8 v8, v9, 0x1

    int-to-byte v10, v12

    .line 64
    aput-byte v10, p0, v9

    add-int/lit8 v9, v8, 0x1

    int-to-byte v10, v13

    .line 65
    aput-byte v10, p0, v8

    add-int/lit8 v8, v9, 0x1

    const/4 v10, -0x1

    .line 66
    aput-byte v10, p0, v9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto/16 :goto_0

    :cond_8
    return-void
.end method
