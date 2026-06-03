.class public final Lcom/google/android/gms/internal/gtm/zzro;
.super Lcom/google/android/gms/internal/gtm/zzxv;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzzh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzro;


# instance fields
.field private zzd:I

.field private zze:J

.field private zzf:Lcom/google/android/gms/internal/gtm/zzac;

.field private zzg:Lcom/google/android/gms/internal/gtm/zzak;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzro;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzro;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzxv;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzxv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzh:B

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzrn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzro;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxv;->zzY()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrn;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/gtm/zzro;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzro;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    return-object v0
.end method

.method public static zzg(Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzxf;)Lcom/google/android/gms/internal/gtm/zzro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzro;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzxv;->zzae(Lcom/google/android/gms/internal/gtm/zzxv;Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzxf;)Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzro;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/gtm/zzro;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zze:J

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/gtm/zzro;Lcom/google/android/gms/internal/gtm/zzac;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzf:Lcom/google/android/gms/internal/gtm/zzac;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/gtm/zzro;Lcom/google/android/gms/internal/gtm/zzak;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzg:Lcom/google/android/gms/internal/gtm/zzak;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zze:J

    return-wide v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzh:B

    return-object p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzro;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrn;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzrn;-><init>(Lcom/google/android/gms/internal/gtm/zzrm;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzro;-><init>()V

    return-object p1

    :pswitch_3
    const-string p1, "zzd"

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "zze"

    aput-object p1, p2, v0

    const/4 p1, 0x2

    const-string p3, "zzf"

    aput-object p3, p2, p1

    const/4 p1, 0x3

    const-string p3, "zzg"

    aput-object p3, p2, p1

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzro;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001\u1502\u0000\u0002\u1509\u0001\u0003\u1409\u0002"

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/gtm/zzro;->zzak(Lcom/google/android/gms/internal/gtm/zzzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzh:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzac;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzf:Lcom/google/android/gms/internal/gtm/zzac;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzac;->zzk()Lcom/google/android/gms/internal/gtm/zzac;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/gtm/zzak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzg:Lcom/google/android/gms/internal/gtm/zzak;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zzf()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzk()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzro;->zzd:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
