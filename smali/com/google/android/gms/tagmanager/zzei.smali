.class final Lcom/google/android/gms/tagmanager/zzei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzai;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzd:Ljava/util/concurrent/ScheduledFuture;

.field private zze:Z

.field private final zzf:Lcom/google/android/gms/tagmanager/zzao;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/tagmanager/zzdf;

.field private final zzi:Lcom/google/android/gms/tagmanager/zzeh;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzao;Lcom/google/android/gms/tagmanager/zzeg;Lcom/google/android/gms/tagmanager/zzeh;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzei;->zzf:Lcom/google/android/gms/tagmanager/zzao;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzei;->zza:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzgb;->zza()Lcom/google/android/gms/internal/gtm/zzfy;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x2

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzfy;->zzb(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzeh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/tagmanager/zzeh;-><init>(Lcom/google/android/gms/tagmanager/zzei;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzi:Lcom/google/android/gms/tagmanager/zzeh;

    return-void
.end method

.method private final declared-synchronized zzd()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzei;->zze:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called method after closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzei;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzei;->zzd:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzei;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzei;->zze:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(JLjava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAfterDelay: containerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzei;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzei;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzei;->zzh:Lcom/google/android/gms/tagmanager/zzdf;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzei;->zzd:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzei;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzi:Lcom/google/android/gms/tagmanager/zzeh;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzei;->zzf:Lcom/google/android/gms/tagmanager/zzao;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzeh;->zza:Lcom/google/android/gms/tagmanager/zzei;

    iget-object v3, v1, Lcom/google/android/gms/tagmanager/zzei;->zzb:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzei;->zza:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/tagmanager/zzef;

    invoke-direct {v4, v3, v1, v2}, Lcom/google/android/gms/tagmanager/zzef;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzao;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzh:Lcom/google/android/gms/tagmanager/zzdf;

    .line 6
    invoke-virtual {v4, v1}, Lcom/google/android/gms/tagmanager/zzef;->zzb(Lcom/google/android/gms/tagmanager/zzdf;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzg:Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v1}, Lcom/google/android/gms/tagmanager/zzef;->zza(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4, p3}, Lcom/google/android/gms/tagmanager/zzef;->zzc(Ljava/lang/String;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-interface {v0, v4, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzd:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callback must be set before loadAfterDelay() is called."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzei;->zzd()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/tagmanager/zzdf;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzei;->zzd()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzei;->zzh:Lcom/google/android/gms/tagmanager/zzdf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
