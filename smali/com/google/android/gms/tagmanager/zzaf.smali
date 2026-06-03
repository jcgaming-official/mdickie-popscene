.class final Lcom/google/android/gms/tagmanager/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzdf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzak;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/tagmanager/zzae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzak;->zzf(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzal;->zzc()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzak;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzak;->zze(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzak;->zze(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzak;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    .line 5
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzak;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzak;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 6
    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzak;->zzf(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzal;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzal;->zzb()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzaf;->zza:Lcom/google/android/gms/tagmanager/zzak;

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;->zzi(Lcom/google/android/gms/tagmanager/zzak;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
