.class final Lcom/google/android/gms/tagmanager/zzab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzak;

.field private zzc:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzak;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzb:Lcom/google/android/gms/tagmanager/zzak;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzab;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tagmanager/Container;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzab;->zza:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzc:Ljava/lang/Long;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzb:Lcom/google/android/gms/tagmanager/zzak;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzak;->zzf(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzal;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzal;->zza()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzc:Ljava/lang/Long;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzc:Ljava/lang/Long;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzb:Lcom/google/android/gms/tagmanager/zzak;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzak;->zzc(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method
