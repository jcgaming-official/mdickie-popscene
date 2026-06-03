.class public final Lcom/google/android/gms/internal/measurement/zzmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzmy;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmy;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmy;->zza:Lcom/google/android/gms/internal/measurement/zzmy;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    .line 78
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zze:I

    .line 82
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    .line 83
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    .line 84
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    .line 85
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzf:Z

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzmy;Lcom/google/android/gms/internal/measurement/zzmy;)Lcom/google/android/gms/internal/measurement/zzmy;
    .locals 6

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    add-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 72
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 74
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmy;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private final zza(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    .line 91
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    const/16 p1, 0x8

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 151
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zza()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 143
    :pswitch_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zznv;->zza()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    if-ne p0, v1, :cond_0

    .line 144
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzb(I)V

    .line 145
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmy;->zzb(Lcom/google/android/gms/internal/measurement/zznv;)V

    .line 146
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zznv;->zza(I)V

    return-void

    .line 147
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zznv;->zza(I)V

    .line 148
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmy;->zzb(Lcom/google/android/gms/internal/measurement/zznv;)V

    .line 149
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzb(I)V

    return-void

    .line 141
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzii;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zznv;->zza(ILcom/google/android/gms/internal/measurement/zzii;)V

    return-void

    .line 139
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zznv;->zza(IJ)V

    return-void

    .line 135
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zznv;->zzb(IJ)V

    return-void

    .line 137
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/measurement/zznv;->zzb(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzmy;
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmy;->zza:Lcom/google/android/gms/internal/measurement/zzmy;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/measurement/zzmy;
    .locals 1

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmy;-><init>()V

    return-object v0
.end method

.method private final zzf()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 166
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzmy;

    if-nez v2, :cond_2

    return v1

    .line 168
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmy;

    .line 169
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 172
    aget v6, v2, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_8

    .line 176
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 179
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_0
    if-ge v5, v2, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    .line 46
    aget v7, v1, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    .line 53
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v4

    return v0
.end method

.method public final zza()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zze:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    if-ge v0, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zza()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :pswitch_0
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzmy;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmy;->zza()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1

    .line 19
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzii;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILcom/google/android/gms/internal/measurement/zzii;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 17
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 13
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(II)I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_2
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zze:I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzmy;)Lcom/google/android/gms/internal/measurement/zzmy;
    .locals 6

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmy;->zza:Lcom/google/android/gms/internal/measurement/zzmy;

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzmy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmy;->zzf()V

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    add-int/2addr v0, v1

    .line 65
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmy;->zza(I)V

    .line 66
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    return-object p0
.end method

.method final zza(ILjava/lang/Object;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmy;->zzf()V

    .line 110
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmy;->zza(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    aput p1, v0, v1

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    aput-object p2, p1, v0

    .line 113
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zznv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznv;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zzb:I

    if-ne v0, v1, :cond_1

    .line 116
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 120
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zznv;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 122
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    if-ge v0, v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 126
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zznv;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final zza(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    .line 102
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 106
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlj;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb()I
    .locals 4

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zze:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    if-ge v0, v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzii;

    .line 38
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(ILcom/google/android/gms/internal/measurement/zzii;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zze:I

    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zznv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznv;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 155
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzmy;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 158
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzb:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzmy;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zznv;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zzf:Z

    :cond_0
    return-void
.end method
