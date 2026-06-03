.class final Lcom/google/android/gms/tagmanager/zzek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzro;

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzel;Lcom/google/android/gms/internal/gtm/zzro;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzek;->zzb:Lcom/google/android/gms/tagmanager/zzel;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzek;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzek;->zza:Lcom/google/android/gms/internal/gtm/zzro;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzek;->zzb:Lcom/google/android/gms/tagmanager/zzel;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzel;->zze()Ljava/io/File;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 4
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zztl;->zzS(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    const-string v0, "GoogleTagManager"

    const-string v1, "error closing stream for writing resource to disk"

    .line 8
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    :try_start_3
    const-string v0, "Error writing resource to disk. Removing resource from disk."

    const-string v3, "GoogleTagManager"

    .line 5
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    const-string v0, "GoogleTagManager"

    const-string v1, "error closing stream for writing resource to disk"

    goto :goto_0

    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    const-string v1, "GoogleTagManager"

    const-string v2, "error closing stream for writing resource to disk"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_2
    throw v0

    :catch_4
    const-string v0, "GoogleTagManager"

    const-string v1, "Error opening resource file for writing"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
