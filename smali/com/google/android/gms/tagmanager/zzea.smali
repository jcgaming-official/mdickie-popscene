.class final Lcom/google/android/gms/tagmanager/zzea;
.super Lcom/google/android/gms/tagmanager/zzbt;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;

.field private static final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzz:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzea;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzbY:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzea;->zzb:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzbV:Lcom/google/android/gms/internal/gtm/zzb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzea;->zzc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzea;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbt;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzea;->zzb:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzam;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzea;->zzc:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzam;

    const-wide/16 v1, 0x0

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfu;->zza()Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v5

    if-eq v0, v5, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfu;->zza()Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v5

    if-eq p1, v5, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfu;->zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfu;->zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfu;->zzc()Lcom/google/android/gms/tagmanager/zzft;

    move-result-object v5

    if-eq v0, v5, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfu;->zzc()Lcom/google/android/gms/tagmanager/zzft;

    move-result-object v5

    if-eq p1, v5, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzft;->doubleValue()D

    move-result-wide v5

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzft;->doubleValue()D

    move-result-wide v7

    cmpg-double p1, v5, v7

    if-gtz p1, :cond_0

    move-wide v1, v5

    move-wide v3, v7

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-double/2addr v3, v1

    mul-double v5, v5, v3

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
