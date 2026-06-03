.class public final Lcom/google/android/gms/tagmanager/zzak;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/tagmanager/zzah;

.field private final zzc:Landroid/os/Looper;

.field private final zzd:Lcom/google/android/gms/tagmanager/zzeb;

.field private final zze:I

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/tagmanager/TagManager;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/tagmanager/zzal;

.field private zzj:Lcom/google/android/gms/tagmanager/zzaj;

.field private final zzk:Lcom/google/android/gms/internal/gtm/zzrp;

.field private volatile zzl:Lcom/google/android/gms/tagmanager/zzz;

.field private volatile zzm:Z

.field private zzn:Lcom/google/android/gms/internal/gtm/zzak;

.field private zzo:J

.field private zzp:Ljava/lang/String;

.field private zzq:Lcom/google/android/gms/tagmanager/zzai;

.field private zzr:Lcom/google/android/gms/tagmanager/zzab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzao;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    .line 1
    new-instance v9, Lcom/google/android/gms/tagmanager/zzel;

    invoke-direct {v9, v7, v8}, Lcom/google/android/gms/tagmanager/zzel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/tagmanager/zzei;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/tagmanager/zzei;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzao;Lcom/google/android/gms/tagmanager/zzeg;Lcom/google/android/gms/tagmanager/zzeh;)V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzrp;

    .line 1
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/gtm/zzrp;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/tagmanager/zzde;

    const-string v18, "refreshing"

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v19

    const/4 v12, 0x1

    const/4 v13, 0x5

    const-wide/32 v14, 0xdbba0

    const-wide/16 v16, 0x1388

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/tagmanager/zzde;-><init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V

    new-instance v4, Lcom/google/android/gms/tagmanager/zzal;

    invoke-direct {v4, v7, v8}, Lcom/google/android/gms/tagmanager/zzal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    invoke-direct {v0, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/google/android/gms/tagmanager/zzak;->zzf:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/google/android/gms/tagmanager/zzak;->zzg:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    :goto_1
    iput-object v5, v0, Lcom/google/android/gms/tagmanager/zzak;->zzc:Landroid/os/Looper;

    iput-object v8, v0, Lcom/google/android/gms/tagmanager/zzak;->zzh:Ljava/lang/String;

    move/from16 v5, p5

    iput v5, v0, Lcom/google/android/gms/tagmanager/zzak;->zze:I

    iput-object v9, v0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    iput-object v10, v0, Lcom/google/android/gms/tagmanager/zzak;->zzq:Lcom/google/android/gms/tagmanager/zzai;

    iput-object v1, v0, Lcom/google/android/gms/tagmanager/zzak;->zzk:Lcom/google/android/gms/internal/gtm/zzrp;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzah;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/tagmanager/zzah;-><init>(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/tagmanager/zzag;)V

    iput-object v1, v0, Lcom/google/android/gms/tagmanager/zzak;->zzb:Lcom/google/android/gms/tagmanager/zzah;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zzf()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/tagmanager/zzak;->zzn:Lcom/google/android/gms/internal/gtm/zzak;

    iput-object v2, v0, Lcom/google/android/gms/tagmanager/zzak;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object v3, v0, Lcom/google/android/gms/tagmanager/zzak;->zzd:Lcom/google/android/gms/tagmanager/zzeb;

    iput-object v4, v0, Lcom/google/android/gms/tagmanager/zzak;->zzi:Lcom/google/android/gms/tagmanager/zzal;

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/tagmanager/zzak;->zzv()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdz;->zza()Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdz;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzak;->zzo(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/zzao;->zza()Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/tagmanager/zzak;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzo:J

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/internal/gtm/zzak;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzn:Lcom/google/android/gms/internal/gtm/zzak;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/common/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzak;->zza:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzal;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzi:Lcom/google/android/gms/tagmanager/zzal;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzeb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzd:Lcom/google/android/gms/tagmanager/zzeb;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/tagmanager/zzak;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzak;->zzr(J)V

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/internal/gtm/zzak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzak;->zzt(Lcom/google/android/gms/internal/gtm/zzak;)V

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/internal/gtm/zzak;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzak;->zzu(Lcom/google/android/gms/internal/gtm/zzak;JZ)V

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/tagmanager/zzak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzm:Z

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/tagmanager/zzak;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzak;->zzv()Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized zzr(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzq:Lcom/google/android/gms/tagmanager/zzai;

    if-nez v0, :cond_0

    const-string p1, "GoogleTagManager"

    const-string p2, "Refresh requested, but no network load scheduler."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzn:Lcom/google/android/gms/internal/gtm/zzak;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzak;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/zzai;->zza(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 0
    monitor-exit p0

    throw p1
.end method

.method private final zzs(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzad;-><init>(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/tagmanager/zzac;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzaj;->zzd(Lcom/google/android/gms/tagmanager/zzdf;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzq:Lcom/google/android/gms/tagmanager/zzai;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzaf;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzaf;-><init>(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/tagmanager/zzae;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzai;->zzc(Lcom/google/android/gms/tagmanager/zzdf;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zze:I

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzaj;->zza(I)Lcom/google/android/gms/internal/gtm/zzrv;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzc:Landroid/os/Looper;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzak;->zzf:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzak;->zzh:Ljava/lang/String;

    .line 4
    new-instance v9, Lcom/google/android/gms/tagmanager/zzz;

    new-instance v10, Lcom/google/android/gms/tagmanager/Container;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzrv;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzak;->zzb:Lcom/google/android/gms/tagmanager/zzah;

    invoke-direct {v9, v0, v1, v10, v2}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzx;)V

    iput-object v9, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzab;-><init>(Lcom/google/android/gms/tagmanager/zzak;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzr:Lcom/google/android/gms/tagmanager/zzab;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzak;->zzv()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzq:Lcom/google/android/gms/tagmanager/zzai;

    const-wide/16 v0, 0x0

    const-string v2, ""

    .line 7
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzai;->zza(JLjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzaj;->zzb()V

    return-void
.end method

.method private final declared-synchronized zzt(Lcom/google/android/gms/internal/gtm/zzak;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzro;->zze()Lcom/google/android/gms/internal/gtm/zzrn;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzrn;->zzc(J)Lcom/google/android/gms/internal/gtm/zzrn;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzac;->zzk()Lcom/google/android/gms/internal/gtm/zzac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrn;->zza(Lcom/google/android/gms/internal/gtm/zzac;)Lcom/google/android/gms/internal/gtm/zzrn;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzo:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzrn;->zzc(J)Lcom/google/android/gms/internal/gtm/zzrn;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzac;->zzk()Lcom/google/android/gms/internal/gtm/zzac;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrn;->zza(Lcom/google/android/gms/internal/gtm/zzac;)Lcom/google/android/gms/internal/gtm/zzrn;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrn;->zzb(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrn;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/zzaj;->zzc(Lcom/google/android/gms/internal/gtm/zzro;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 0
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzu(Lcom/google/android/gms/internal/gtm/zzak;JZ)V
    .locals 9

    monitor-enter p0

    if-eqz p4, :cond_0

    .line 1
    :try_start_0
    iget-boolean p4, p0, Lcom/google/android/gms/tagmanager/zzak;->zzm:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzak;->isReady()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    .line 1
    :cond_2
    :goto_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzn:Lcom/google/android/gms/internal/gtm/zzak;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzak;->zzo:J

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzak;->zzi:Lcom/google/android/gms/tagmanager/zzal;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/tagmanager/zzal;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzak;->zzo:J

    const/4 p4, 0x0

    add-long/2addr v4, v0

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzak;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const/4 p4, 0x0

    sub-long/2addr v4, v6

    .line 4
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;->zzr(J)V

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzak;->zzf:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzak;->zzg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzak;->zzh:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    .line 7
    invoke-virtual {p4}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    move-object v2, v0

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzak;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzak;->zzc:Landroid/os/Looper;

    iget-object p3, p0, Lcom/google/android/gms/tagmanager/zzak;->zzb:Lcom/google/android/gms/tagmanager/zzah;

    .line 8
    new-instance p4, Lcom/google/android/gms/tagmanager/zzz;

    invoke-direct {p4, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzx;)V

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/zzz;->zzc(Lcom/google/android/gms/tagmanager/Container;)V

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzak;->isReady()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzr:Lcom/google/android/gms/tagmanager/zzab;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/zzab;->zza(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzak;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    .line 0
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private final zzv()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdz;->zza()Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->zze()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->zze()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzh:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzak;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object p1

    return-object p1
.end method

.method protected final zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzl:Lcom/google/android/gms/tagmanager/zzz;

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "GoogleTagManager"

    const-string v1, "timer expired: setting result to failure"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method final declared-synchronized zzh()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzl()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zze:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzaj;->zza(I)Lcom/google/android/gms/internal/gtm/zzrv;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzak;->zzf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzak;->zzh:Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/tagmanager/Container;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzrv;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzak;->zzc:Landroid/os/Looper;

    .line 3
    new-instance v3, Lcom/google/android/gms/tagmanager/zzz;

    new-instance v4, Lcom/google/android/gms/tagmanager/zzaa;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/zzaa;-><init>(Lcom/google/android/gms/tagmanager/zzak;)V

    invoke-direct {v3, v1, v2, v9, v4}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzx;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tagmanager/zzak;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_0
    const-string v1, "GoogleTagManager"

    const-string v2, "Default was requested, but no default container was found"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzak;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzak;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 3
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzq:Lcom/google/android/gms/tagmanager/zzai;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzj:Lcom/google/android/gms/tagmanager/zzaj;

    return-void
.end method

.method public final zzm()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzak;->zzs(Z)V

    return-void
.end method

.method public final zzn()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzak;->zzs(Z)V

    return-void
.end method

.method final declared-synchronized zzo(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzp:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzak;->zzq:Lcom/google/android/gms/tagmanager/zzai;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzai;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
