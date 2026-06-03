.class final Lcom/google/android/gms/internal/measurement/zzdr;
.super Lcom/google/android/gms/internal/measurement/zzds$zza;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.0.0"


# instance fields
.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Landroid/content/Context;

.field private final synthetic zzf:Landroid/os/Bundle;

.field private final synthetic zzg:Lcom/google/android/gms/internal/measurement/zzds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzds;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zze:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zzf:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzds$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzds;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzc:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzd:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Lcom/google/android/gms/internal/measurement/zzds;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzd:Ljava/lang/String;

    .line 7
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzc:Ljava/lang/String;

    .line 8
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzds;->zzb(Lcom/google/android/gms/internal/measurement/zzds;)Ljava/lang/String;

    move-result-object v5

    move-object v13, v0

    move-object v14, v4

    move-object v12, v5

    goto :goto_0

    :cond_0
    move-object v12, v4

    move-object v13, v12

    move-object v14, v13

    .line 9
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zze:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zze:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Lcom/google/android/gms/internal/measurement/zzds;Lcom/google/android/gms/internal/measurement/zzdd;)V

    .line 11
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Lcom/google/android/gms/internal/measurement/zzds;)Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzds;->zzb(Lcom/google/android/gms/internal/measurement/zzds;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Failed to connect to measurement client."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zze:Landroid/content/Context;

    const-string v4, "com.google.android.gms.measurement.dynamite"

    .line 15
    invoke-static {v0, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 17
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zze:Landroid/content/Context;

    const-string v5, "com.google.android.gms.measurement.dynamite"

    .line 18
    invoke-static {v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 20
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v4, v0, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 22
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdq;

    const-wide/32 v7, 0x16760

    int-to-long v9, v5

    iget-object v15, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzf:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zze:Landroid/content/Context;

    .line 23
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhg;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 24
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Lcom/google/android/gms/internal/measurement/zzds;)Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdd;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zze:Landroid/content/Context;

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zza:J

    invoke-interface {v4, v5, v0, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdd;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdq;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 28
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzg:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-static {v4, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Lcom/google/android/gms/internal/measurement/zzds;Ljava/lang/Exception;ZZ)V

    return-void
.end method
