.class final Lcom/google/android/gms/tagmanager/zzcb;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# static fields
.field private static zza:Lcom/google/android/gms/tagmanager/zzcb;


# instance fields
.field private final zzb:Ljava/util/concurrent/LinkedBlockingQueue;

.field private volatile zzc:Z

.field private volatile zzd:Z

.field private volatile zze:Lcom/google/android/gms/tagmanager/zzcc;

.field private final zzf:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "GAThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzd:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzf:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzf:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcb;->start()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/tagmanager/zzcb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzf:Landroid/content/Context;

    return-object p0
.end method

.method static zzb(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzcb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zza:Lcom/google/android/gms/tagmanager/zzcb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zza:Lcom/google/android/gms/tagmanager/zzcb;

    :cond_0
    sget-object p0, Lcom/google/android/gms/tagmanager/zzcb;->zza:Lcom/google/android/gms/tagmanager/zzcb;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/tagmanager/zzcb;)Lcom/google/android/gms/tagmanager/zzcc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zze:Lcom/google/android/gms/tagmanager/zzcc;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/tagmanager/zzcb;Lcom/google/android/gms/tagmanager/zzcc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zze:Lcom/google/android/gms/tagmanager/zzcc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzd:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Z

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdg;->zzb:Lcom/google/android/gms/tagmanager/zzbf;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzb(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    new-instance v0, Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "Error on Google TagManager Thread: "

    const-string v2, "GoogleTagManager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleTagManager"

    const-string v1, "Google TagManager is shutting down."

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Z

    goto :goto_0
.end method

.method public final zze(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzf(Ljava/lang/String;J)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/tagmanager/zzca;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzca;-><init>(Lcom/google/android/gms/tagmanager/zzcb;Lcom/google/android/gms/tagmanager/zzcb;JLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
