.class final Lcom/google/android/gms/tagmanager/zzel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzaj;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/concurrent/ExecutorService;

.field private zzd:Lcom/google/android/gms/tagmanager/zzdf;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzel;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzel;->zzb:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzgb;->zza()Lcom/google/android/gms/internal/gtm/zzfy;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/gtm/zzfy;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzel;->zzc:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzel;->zzc:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/gtm/zzrv;
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzel;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzel;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to load a container from the resource ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;)V

    .line 6
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gtm/zzsd;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v1, "UTF-8"

    .line 8
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzcy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrv;->zza()Lcom/google/android/gms/internal/gtm/zzrx;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzc()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrr;->zzb()Lcom/google/android/gms/internal/gtm/zzrt;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/gtm/zzb;->zzbA:Lcom/google/android/gms/internal/gtm/zzb;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzam;->zzl(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/gtm/zzrt;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrt;

    sget-object v7, Lcom/google/android/gms/internal/gtm/zzb;->zzbo:Lcom/google/android/gms/internal/gtm/zzb;

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzs;->zzc()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzg()Lcom/google/android/gms/internal/gtm/zzan;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    sget-object v10, Lcom/google/android/gms/internal/gtm/zzat;->zze:Lcom/google/android/gms/internal/gtm/zzat;

    .line 17
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 18
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/gtm/zzan;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 19
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/gtm/zzan;->zzo(Z)Lcom/google/android/gms/internal/gtm/zzan;

    .line 20
    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzam;

    .line 21
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/gtm/zzrt;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrt;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzs;->zzd()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzam;->zzm(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/gtm/zzrt;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzrt;->zza()Lcom/google/android/gms/internal/gtm/zzrr;

    move-result-object v6

    .line 23
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/gtm/zzrx;->zzb(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzrx;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrx;->zza()Lcom/google/android/gms/internal/gtm/zzrv;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_0
    :try_start_3
    const-string v1, "Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn\'t contain a JSON container"

    const-string v3, "GoogleTagManager"

    .line 25
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string v1, "Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format."

    .line 35
    sget-object v3, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    .line 26
    invoke-virtual {v3, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_1

    const-string v2, "The container was successfully loaded from the resource (using JSON file format)"

    .line 24
    sget-object v3, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    .line 27
    invoke-virtual {v3, v2}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;)V

    return-object v1

    .line 28
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 29
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxf;->zza()Lcom/google/android/gms/internal/gtm/zzxf;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gtm/zzac;->zzl([BLcom/google/android/gms/internal/gtm/zzxf;)Lcom/google/android/gms/internal/gtm/zzac;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzb(Lcom/google/android/gms/internal/gtm/zzac;)Lcom/google/android/gms/internal/gtm/zzrv;

    move-result-object v1

    const-string v2, "The container was successfully loaded from the resource (using binary file)"

    sget-object v3, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    .line 31
    invoke-virtual {v3, v2}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/gtm/zzyg; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/gtm/zzsc; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    goto :goto_3

    :catch_2
    :try_start_5
    const-string v1, "The resource file is invalid. The container from the binary file is invalid"

    const-string v2, "GoogleTagManager"

    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    const-string v1, "The resource file is corrupted. The container cannot be extracted from the binary file"

    const-string v2, "GoogleTagManager"

    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    return-object v0

    .line 3
    :catch_4
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzel;->zza:Landroid/content/Context;

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading the default container with resource ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GoogleTagManager"

    .line 35
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 31
    :catch_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load the container. No default container resource found with the resource ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GoogleTagManager"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzej;-><init>(Lcom/google/android/gms/tagmanager/zzel;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzel;->zzc:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzro;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzek;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzek;-><init>(Lcom/google/android/gms/tagmanager/zzel;Lcom/google/android/gms/internal/gtm/zzro;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzel;->zzc:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/tagmanager/zzdf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzel;->zzd:Lcom/google/android/gms/tagmanager/zzdf;

    return-void
.end method

.method final zze()Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzel;->zza:Landroid/content/Context;

    const-string v1, "google_tagmanager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzel;->zzb:Ljava/lang/String;

    const-string v3, "resource_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method final zzf()V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzel;->zzd:Lcom/google/android/gms/tagmanager/zzdf;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    const-string v1, "Attempting to load resource from disk"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdz;->zza()Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->zze()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdz;->zza()Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->zze()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzel;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdz;->zza()Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzdz;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzel;->zze()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 8
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxf;->zza()Lcom/google/android/gms/internal/gtm/zzxf;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/gtm/zzro;->zzg(Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzxf;)Lcom/google/android/gms/internal/gtm/zzro;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzro;->zzk()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzro;->zzl()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Resource and SupplementedResource are NULL."

    .line 20
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzel;->zzd:Lcom/google/android/gms/tagmanager/zzdf;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzro;->zzl()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzro;->zzd()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzxv;->zzZ()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzaj;

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzro;->zzc()Lcom/google/android/gms/internal/gtm/zzac;

    move-result-object v5

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zzd()Lcom/google/android/gms/internal/gtm/zzaj;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/gtm/zzaj;->zzc(Lcom/google/android/gms/internal/gtm/zzac;)Lcom/google/android/gms/internal/gtm/zzaj;

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzaj;->zza()Lcom/google/android/gms/internal/gtm/zzaj;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzac;->zzn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/gtm/zzaj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzaj;

    move-object v5, v6

    .line 11
    :goto_1
    check-cast v4, Lcom/google/android/gms/tagmanager/zzad;

    iget-object v4, v4, Lcom/google/android/gms/tagmanager/zzad;->zza:Lcom/google/android/gms/tagmanager/zzak;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzro;->zza()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v1}, Lcom/google/android/gms/tagmanager/zzak;->zzk(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/internal/gtm/zzak;JZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, "GoogleTagManager"

    const-string v1, "Error closing stream for reading resource from disk"

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzel;->zzd:Lcom/google/android/gms/tagmanager/zzdf;

    .line 21
    invoke-interface {v1, v2}, Lcom/google/android/gms/tagmanager/zzdf;->zza(I)V

    const-string v1, "Failed to read the resource from disk. The resource is inconsistent"

    const-string v2, "GoogleTagManager"

    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7
    :catch_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzel;->zzd:Lcom/google/android/gms/tagmanager/zzdf;

    .line 23
    invoke-interface {v1, v2}, Lcom/google/android/gms/tagmanager/zzdf;->zza(I)V

    const-string v1, "Failed to read the resource from disk"

    const-string v2, "GoogleTagManager"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    const-string v0, "GoogleTagManager"

    const-string v1, "Error closing stream for reading resource from disk"

    .line 19
    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_4
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    const-string v1, "The Disk resource was successfully read."

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;)V

    return-void

    .line 18
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    const-string v0, "GoogleTagManager"

    const-string v2, "Error closing stream for reading resource from disk"

    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_6
    throw v1

    .line 28
    :catch_5
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    const-string v2, "Failed to find the resource in the disk"

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzel;->zzd:Lcom/google/android/gms/tagmanager/zzdf;

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzdf;->zza(I)V

    return-void

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzel;->zzd:Lcom/google/android/gms/tagmanager/zzdf;

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzdf;->zza(I)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be set before execute"

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
