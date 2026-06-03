.class public Lcom/google/android/gms/measurement/internal/zzni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzni$zzb;,
        Lcom/google/android/gms/measurement/internal/zzni$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zzni;


# instance fields
.field private zzaa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzab:J

.field private final zzac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zziq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzav;",
            ">;"
        }
    .end annotation
.end field

.field private final zzae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzni$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaf:Lcom/google/android/gms/measurement/internal/zzkv;

.field private zzag:Ljava/lang/String;

.field private final zzah:Lcom/google/android/gms/measurement/internal/zznx;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzgz;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzgg;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzal;

.field private zze:Lcom/google/android/gms/measurement/internal/zzgj;

.field private zzf:Lcom/google/android/gms/measurement/internal/zznc;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzu;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zznr;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzkt;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzmi;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzng;

.field private zzl:Lcom/google/android/gms/measurement/internal/zzgt;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzhm;

.field private zzn:Z

.field private zzo:Z

.field private zzp:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Ljava/nio/channels/FileLock;

.field private zzy:Ljava/nio/channels/FileChannel;

.field private zzz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzns;)V
    .locals 1

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzni;-><init>(Lcom/google/android/gms/measurement/internal/zzns;Lcom/google/android/gms/measurement/internal/zzhm;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzns;Lcom/google/android/gms/measurement/internal/zzhm;)V
    .locals 2

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 438
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzn:Z

    .line 439
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzr:Ljava/util/Set;

    .line 440
    new-instance p2, Lcom/google/android/gms/measurement/internal/zznl;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zznl;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    .line 441
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzns;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 443
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzhm;

    move-result-object p2

    .line 445
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    const-wide/16 v0, -0x1

    .line 446
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzab:J

    .line 448
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzng;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzng;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 449
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzk:Lcom/google/android/gms/measurement/internal/zzng;

    .line 451
    new-instance p2, Lcom/google/android/gms/measurement/internal/zznr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zznr;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 453
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 454
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzh:Lcom/google/android/gms/measurement/internal/zznr;

    .line 456
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzgg;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 458
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 459
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzc:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 461
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzgz;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 463
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 464
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    .line 465
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzac:Ljava/util/Map;

    .line 466
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzad:Ljava/util/Map;

    .line 467
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzae:Ljava/util/Map;

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zznh;-><init>(Lcom/google/android/gms/measurement/internal/zzni;Lcom/google/android/gms/measurement/internal/zzns;)V

    .line 469
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfo$zza;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzak;->zzj:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzcy:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgl;->zza()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v0, v3, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 11
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq$zza;)Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v0

    .line 12
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq v0, v3, :cond_2

    .line 13
    sget-object p1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 14
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 15
    :cond_2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 17
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq$zza;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 25
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 27
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 32
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return p1

    .line 22
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzav;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfo$zza;

    move-result-object v0

    const/16 v1, 0x5a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne p1, p3, :cond_0

    .line 224
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zza()I

    move-result v1

    .line 225
    sget-object p1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    invoke-virtual {p4, p1, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;I)V

    goto :goto_0

    .line 227
    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzak;->zzj:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 228
    :goto_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzav;

    .line 229
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 230
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "-"

    invoke-direct {p1, p2, v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    .line 232
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v0

    .line 233
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq v0, v4, :cond_e

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v0, v4, :cond_2

    goto/16 :goto_9

    .line 237
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzcy:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 241
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v0, p2, :cond_3

    .line 242
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 243
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq$zza;)Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object p2

    .line 244
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq p2, v0, :cond_3

    .line 245
    sget-object p3, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    :goto_1
    move-object v0, p2

    goto/16 :goto_a

    .line 247
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 248
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq$zza;)Lcom/google/android/gms/measurement/internal/zziq$zza;

    move-result-object p2

    .line 250
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zziq;->zzc()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object p3

    .line 251
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq p3, v0, :cond_5

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne p3, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 252
    :goto_3
    sget-object v4, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    if-ne p2, v4, :cond_6

    if-eqz v0, :cond_6

    .line 253
    sget-object p2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzak;->zzc:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p2, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    move-object v0, p3

    goto/16 :goto_a

    .line 255
    :cond_6
    sget-object p2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 256
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 257
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq$zza;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 259
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    goto :goto_1

    .line 260
    :cond_7
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    goto :goto_1

    .line 264
    :cond_8
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq v0, p2, :cond_a

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v0, p2, :cond_9

    goto :goto_4

    :cond_9
    const/4 p2, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 p2, 0x1

    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 266
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 267
    invoke-virtual {p2, p1, v4}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq$zza;)Lcom/google/android/gms/measurement/internal/zziq$zza;

    move-result-object p2

    .line 268
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zziq;->zze()Ljava/lang/Boolean;

    move-result-object p3

    .line 269
    sget-object v4, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    if-ne p2, v4, :cond_c

    if-eqz p3, :cond_c

    .line 270
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 271
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    :goto_6
    move-object v0, p2

    goto :goto_7

    .line 272
    :cond_b
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    goto :goto_6

    .line 273
    :goto_7
    sget-object p2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzak;->zzc:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 274
    :cond_c
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v0, p2, :cond_f

    .line 275
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq$zza;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 276
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    goto :goto_8

    .line 277
    :cond_d
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    .line 278
    :goto_8
    sget-object p3, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto/16 :goto_1

    .line 234
    :cond_e
    :goto_9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zza()I

    move-result v1

    .line 235
    sget-object p2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    invoke-virtual {p4, p2, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;I)V

    .line 281
    :cond_f
    :goto_a
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzn(Ljava/lang/String;)Z

    move-result p2

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzh(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    .line 284
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    if-eq v0, p3, :cond_12

    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_10

    goto :goto_c

    .line 289
    :cond_10
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzav;

    .line 290
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 291
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_11

    const-string p2, ""

    .line 292
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_11
    const-string p1, ""

    :goto_b
    invoke-direct {p3, p4, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    .line 285
    :cond_12
    :goto_c
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzav;

    .line 286
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 287
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p4, "-"

    invoke-direct {p1, p3, v1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzni;)Lcom/google/android/gms/measurement/internal/zzhm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;
    .locals 3

    if-eqz p0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznd;->zzam()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzni;
    .locals 2

    .line 330
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzni;->zza:Lcom/google/android/gms/measurement/internal/zzni;

    if-nez v0, :cond_1

    .line 333
    const-class v0, Lcom/google/android/gms/measurement/internal/zzni;

    monitor-enter v0

    .line 334
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzni;->zza:Lcom/google/android/gms/measurement/internal/zzni;

    if-nez v1, :cond_0

    .line 336
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzns;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzns;-><init>(Landroid/content/Context;)V

    .line 337
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzns;

    .line 338
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzni;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzni;-><init>(Lcom/google/android/gms/measurement/internal/zzns;)V

    .line 339
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzni;->zza:Lcom/google/android/gms/measurement/internal/zzni;

    .line 340
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 341
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzni;->zza:Lcom/google/android/gms/measurement/internal/zzni;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 344
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 348
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    .line 349
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 356
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 360
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zziq;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 375
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 377
    new-array p1, p1, [B

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzv()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 379
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%032x"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;ILjava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 745
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 746
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, "_err"

    .line 747
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v0

    const-string v1, "_err"

    .line 751
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v0

    int-to-long v1, p1

    .line 752
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object p1

    .line 753
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 754
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v0

    const-string v1, "_ev"

    .line 755
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v0

    .line 756
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object p2

    .line 757
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 758
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1500
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1501
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1503
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;JZ)V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "_lte"

    if-eqz p4, :cond_0

    const-string v0, "_se"

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 981
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_0

    .line 986
    :cond_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/zznv;

    .line 987
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    .line 988
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 989
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v9, p2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_1

    .line 982
    :cond_2
    :goto_0
    new-instance v8, Lcom/google/android/gms/measurement/internal/zznv;

    .line 983
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    .line 984
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 985
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 990
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzn;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v1

    .line 991
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v1

    .line 992
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 993
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v1

    .line 994
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfu$zzn;

    const/4 v2, 0x0

    .line 997
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 999
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zzn;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 1002
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzn;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_6

    .line 1004
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zznv;)Z

    const-string p1, "lifetime"

    if-eqz p4, :cond_5

    const-string p1, "session-scoped"

    .line 1008
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    .line 1009
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    iget-object p4, v8, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 1010
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzni;Lcom/google/android/gms/measurement/internal/zzns;)V
    .locals 3

    .line 394
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 396
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 397
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzl:Lcom/google/android/gms/measurement/internal/zzgt;

    .line 399
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 401
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 402
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzd:Lcom/google/android/gms/measurement/internal/zzal;

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 405
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzmi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzmi;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 407
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 408
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 410
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 412
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 413
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzg:Lcom/google/android/gms/measurement/internal/zzu;

    .line 415
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 417
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 418
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzi:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 420
    new-instance p1, Lcom/google/android/gms/measurement/internal/zznc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zznc;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 422
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzal()V

    .line 423
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzf:Lcom/google/android/gms/measurement/internal/zznc;

    .line 425
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzgj;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 426
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 427
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzs:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzt:I

    if-eq p1, v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v0, "Not all upload components initialized"

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzs:I

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzt:I

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 432
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 433
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzn:Z

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x4

    .line 2239
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_o"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_sn"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "_sc"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "_si"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 2240
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2241
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2243
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1, p4, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result p1

    int-to-long v4, p1

    goto :goto_1

    .line 2242
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1, p4, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Z)I

    move-result p1

    int-to-long v4, p1

    .line 2245
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v1, p1

    .line 2247
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    .line 2248
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    const/16 v6, 0x28

    invoke-static {p1, v6, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    cmp-long v6, v1, v4

    if-lez v6, :cond_4

    .line 2249
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "_ev"

    .line 2250
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2252
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    .line 2253
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    .line 2254
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    invoke-virtual {p2, p4, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Z)I

    move-result p2

    .line 2255
    invoke-static {p1, p2, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_ev"

    .line 2256
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2258
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p4

    .line 2259
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzv()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p4

    const-string v0, "Param value is too long; discarded. Name, value length"

    .line 2260
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2261
    invoke-virtual {p4, v0, p1, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p4, "_err"

    .line 2262
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p4, v3, v5

    if-nez p4, :cond_3

    const-string p4, "_err"

    const-wide/16 v3, 0x4

    .line 2263
    invoke-virtual {p3, p4, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p4, "_ev"

    .line 2264
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    const-string p4, "_ev"

    .line 2265
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_el"

    .line 2266
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2267
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1883
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1885
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Z)V

    .line 1886
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Long;)V

    .line 1887
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/Long;)V

    .line 1888
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1889
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    const/4 p3, 0x0

    .line 1890
    invoke-virtual {p2, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1612
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1613
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzz:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return-void

    .line 1615
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzz:Ljava/util/List;

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 3499
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3500
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 3504
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3505
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3506
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 3507
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 3508
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 3509
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 3510
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 3511
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    .line 3514
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3501
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Z
    .locals 8

    const-string v0, "_e"

    .line 3469
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3470
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3472
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    .line 3473
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3474
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 3476
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 3477
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzh()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 3478
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_e"

    .line 3481
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3482
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3484
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3486
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3487
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    goto :goto_2

    .line 3489
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v0

    .line 3491
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v5, "_et"

    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3492
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    .line 3493
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 3494
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v2, "_et"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3495
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string p2, "_fr"

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .locals 49
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 2691
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 2692
    :try_start_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzni$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzni$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzni;Lcom/google/android/gms/measurement/internal/zznp;)V

    .line 2693
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzab:J

    .line 2695
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 2697
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2699
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 2700
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v13, :cond_3

    cmp-long v13, v5, v8

    if-eqz v13, :cond_0

    .line 2702
    :try_start_2
    new-array v13, v10, [Ljava/lang/String;

    .line 2703
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v3

    goto/16 :goto_52

    :catch_0
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_0
    move-object v3, v0

    goto/16 :goto_7

    .line 2704
    :cond_0
    :try_start_3
    new-array v13, v11, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    cmp-long v14, v5, v8

    if-eqz v14, :cond_1

    :try_start_4
    const-string v14, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v14, ""

    .line 2706
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v3, "select app_id, metadata_fingerprint from raw_events where "

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2707
    invoke-virtual {v15, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2708
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v7, :cond_2

    if-eqz v3, :cond_c

    .line 2710
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/16 :goto_8

    .line 2712
    :cond_2
    :try_start_8
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2713
    :try_start_9
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2714
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v22, v3

    move-object v3, v7

    move-object v7, v13

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v3

    goto :goto_0

    :cond_3
    cmp-long v3, v5, v8

    if-eqz v3, :cond_4

    .line 2717
    :try_start_a
    new-array v3, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v12

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v11

    goto :goto_3

    .line 2718
    :cond_4
    new-array v3, v11, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v12

    :goto_3
    cmp-long v7, v5, v8

    if-eqz v7, :cond_5

    const-string v7, " and rowid <= ?"

    goto :goto_4

    :cond_5
    const-string v7, ""

    .line 2720
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2721
    invoke-virtual {v15, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2722
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v7, :cond_6

    if-eqz v3, :cond_c

    .line 2724
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_8

    .line 2726
    :cond_6
    :try_start_d
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2727
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v22, v3

    move-object v7, v13

    const/4 v3, 0x0

    :goto_5
    :try_start_e
    const-string v14, "raw_events_metadata"

    .line 2728
    new-array v13, v11, [Ljava/lang/String;

    const-string v16, "metadata"

    aput-object v16, v13, v12

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v3, v8, v12

    aput-object v7, v8, v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const-string v21, "2"

    move-object v9, v13

    move-object v13, v15

    move-object/from16 v23, v15

    move-object v15, v9

    move-object/from16 v17, v8

    .line 2729
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2730
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_7

    .line 2731
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v5

    .line 2732
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    .line 2733
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v8, :cond_c

    .line 2735
    :try_start_10
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_8

    .line 2737
    :cond_7
    :try_start_11
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 2738
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzv()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzlh;[B)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfu$zzj;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 2748
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2749
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v13

    .line 2750
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v13

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    .line 2751
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 2752
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2753
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2754
    invoke-interface {v2, v9}, Lcom/google/android/gms/measurement/internal/zzap;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj;)V

    const-wide/16 v13, -0x1

    cmp-long v9, v5, v13

    if-eqz v9, :cond_9

    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    .line 2757
    new-array v14, v13, [Ljava/lang/String;

    aput-object v3, v14, v12

    aput-object v7, v14, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v10

    move-object/from16 v16, v9

    move-object/from16 v17, v14

    goto :goto_6

    :cond_9
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    .line 2759
    new-array v6, v10, [Ljava/lang/String;

    aput-object v3, v6, v12

    aput-object v7, v6, v11

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_6
    const-string v14, "raw_events"

    const/4 v5, 0x4

    .line 2760
    new-array v15, v5, [Ljava/lang/String;

    const-string v5, "rowid"

    aput-object v5, v15, v12

    const-string v5, "name"

    aput-object v5, v15, v11

    const-string v5, "timestamp"

    aput-object v5, v15, v10

    const-string v5, "data"

    const/4 v6, 0x3

    aput-object v5, v15, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const/16 v21, 0x0

    move-object/from16 v13, v23

    .line 2761
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 2762
    :try_start_14
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2763
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v6

    .line 2764
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    .line 2765
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2766
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v5, :cond_c

    .line 2768
    :try_start_15
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_8

    .line 2770
    :cond_a
    :try_start_16
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x3

    .line 2771
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 2772
    :try_start_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzlh;[B)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 2779
    :try_start_18
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    move-result-object v9

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 2780
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-interface {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzap;->zza(JLcom/google/android/gms/internal/measurement/zzfu$zze;)Z

    move-result v6
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    .line 2782
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 2775
    :try_start_1a
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v7

    .line 2776
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event. appId"

    .line 2777
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2784
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-nez v6, :cond_a

    if-eqz v5, :cond_c

    .line 2786
    :try_start_1b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v8, v5

    goto/16 :goto_52

    :catch_3
    move-exception v0

    move-object v7, v3

    move-object v8, v5

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v5, v0

    .line 2741
    :try_start_1c
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v6

    .line 2742
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    const-string v7, "Data loss. Failed to merge raw event metadata. appId"

    .line 2743
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2744
    invoke-virtual {v6, v7, v9, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-eqz v8, :cond_c

    .line 2746
    :try_start_1d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v7, v3

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v8, v22

    goto/16 :goto_52

    :catch_6
    move-exception v0

    move-object v7, v3

    move-object/from16 v8, v22

    goto/16 :goto_0

    :catch_7
    move-exception v0

    move-object v8, v3

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x0

    goto/16 :goto_52

    :catch_8
    move-exception v0

    move-object v3, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2788
    :goto_7
    :try_start_1e
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 2789
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    .line 2790
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    if-eqz v8, :cond_c

    .line 2792
    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2797
    :cond_c
    :goto_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzc:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v3, 0x1

    :goto_a
    if-nez v3, :cond_85

    .line 2800
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2801
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v3

    .line 2802
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2809
    :goto_b
    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzc:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_3e

    .line 2811
    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzc:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    .line 2812
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v15

    .line 2813
    check-cast v15, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 2814
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v12

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2815
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v4, v10}, Lcom/google/android/gms/measurement/internal/zzgz;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2816
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 2817
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v10, "Dropping blocked raw event. appId"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2818
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2819
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v12

    move/from16 v24, v6

    .line 2820
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2821
    invoke-virtual {v4, v10, v11, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2823
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v4, 0x1

    :goto_d
    if-nez v4, :cond_11

    const-string v4, "_err"

    .line 2825
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2826
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2827
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xb

    const-string v19, "_ev"

    .line 2828
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v16, v4

    .line 2829
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move v12, v5

    move/from16 v6, v24

    goto/16 :goto_29

    :cond_12
    move/from16 v24, v6

    .line 2831
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_ai"

    .line 2832
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zziu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "_ai"

    .line 2833
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 2834
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v6, "Renaming ad_impression to _ai"

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 2835
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    .line 2836
    :goto_e
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza()I

    move-result v6

    if-ge v4, v6, :cond_14

    const-string v6, "ad_platform"

    .line 2837
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2838
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "admob"

    .line 2839
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2840
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v6

    .line 2841
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zzv()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    const-string v10, "AdMob ad impression logged from app. Potentially duplicative."

    .line 2842
    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2845
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2846
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 2847
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v6

    .line 2848
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2849
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x17333

    if-eq v10, v11, :cond_15

    goto :goto_f

    :cond_15
    const-string v10, "_ui"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x0

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v6, -0x1

    :goto_10
    if-eqz v6, :cond_17

    const/4 v6, 0x0

    goto :goto_11

    :cond_17
    const/4 v6, 0x1

    :goto_11
    if-eqz v6, :cond_18

    goto :goto_13

    :cond_18
    move/from16 v37, v5

    move/from16 v25, v7

    move-object/from16 v26, v13

    :goto_12
    move/from16 v6, v24

    goto/16 :goto_19

    :cond_19
    :goto_13
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2855
    :goto_14
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza()I

    move-result v12

    if-ge v6, v12, :cond_1c

    const-string v12, "_c"

    .line 2856
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v16

    move/from16 v25, v7

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2858
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v7

    .line 2859
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v7

    .line 2860
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    const-wide/16 v11, 0x1

    .line 2861
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v7

    .line 2862
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 2864
    invoke-virtual {v15, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    move-object/from16 v26, v13

    const/4 v11, 0x1

    goto :goto_15

    :cond_1a
    const-string v7, "_r"

    .line 2865
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2867
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v7

    .line 2868
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v7

    .line 2869
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-object/from16 v26, v13

    const-wide/16 v12, 0x1

    .line 2870
    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v7

    .line 2871
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 2873
    invoke-virtual {v15, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    const/4 v10, 0x1

    goto :goto_15

    :cond_1b
    move-object/from16 v26, v13

    :goto_15
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v25

    move-object/from16 v13, v26

    goto :goto_14

    :cond_1c
    move/from16 v25, v7

    move-object/from16 v26, v13

    if-nez v11, :cond_1d

    if-eqz v4, :cond_1d

    .line 2876
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v6

    .line 2877
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    const-string v7, "Marking event as conversion"

    .line 2878
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v11

    .line 2879
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2880
    invoke-virtual {v6, v7, v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2882
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v6

    const-string v7, "_c"

    .line 2883
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v6

    const-wide/16 v11, 0x1

    .line 2884
    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v6

    .line 2885
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    :cond_1d
    if-nez v10, :cond_1e

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v6

    .line 2888
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    const-string v7, "Marking event as real-time"

    .line 2889
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v10

    .line 2890
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2891
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2893
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v6

    const-string v7, "_r"

    .line 2894
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v6

    const-wide/16 v10, 0x1

    .line 2895
    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v6

    .line 2896
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 2899
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v27

    .line 2900
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzx()J

    move-result-wide v28

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2901
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    .line 2902
    invoke-virtual/range {v27 .. v36}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 2903
    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    .line 2904
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    cmp-long v12, v6, v10

    if-lez v12, :cond_1f

    const-string v6, "_r"

    .line 2905
    invoke-static {v15, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;)V

    goto :goto_16

    :cond_1f
    const/16 v24, 0x1

    .line 2907
    :goto_16
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzny;->zzh(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    if-eqz v4, :cond_25

    .line 2910
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v27

    .line 2911
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzx()J

    move-result-wide v28

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2912
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 2913
    invoke-virtual/range {v27 .. v36}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 2914
    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:J

    .line 2915
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v11

    .line 2916
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbf;->zzn:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v10

    int-to-long v10, v10

    cmp-long v12, v6, v10

    if-lez v12, :cond_25

    .line 2918
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v6

    .line 2919
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    const-string v7, "Too many conversions. Not logging as conversion. appId"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2920
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 2921
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 2925
    :goto_17
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza()I

    move-result v12

    if-ge v6, v12, :cond_22

    .line 2926
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v12

    const-string v13, "_c"

    move/from16 v37, v5

    .line 2927
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2929
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v5

    .line 2930
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-object v7, v5

    move v10, v6

    goto :goto_18

    :cond_20
    const-string v5, "_err"

    .line 2932
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v11, 0x1

    :cond_21
    :goto_18
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v37

    goto :goto_17

    :cond_22
    move/from16 v37, v5

    if-eqz v11, :cond_23

    if-eqz v7, :cond_23

    .line 2937
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    goto/16 :goto_12

    :cond_23
    if-eqz v7, :cond_24

    .line 2941
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzib;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    const-string v6, "_err"

    .line 2942
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v5

    const-wide/16 v6, 0xa

    .line 2943
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v5

    .line 2944
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 2945
    invoke-virtual {v15, v10, v5}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    goto/16 :goto_12

    .line 2947
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v5

    .line 2948
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    const-string v6, "Did not find conversion parameter. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2949
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 2950
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_25
    move/from16 v37, v5

    goto/16 :goto_12

    :goto_19
    if-eqz v4, :cond_2e

    .line 2953
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzf()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v10, -0x1

    .line 2956
    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_28

    const-string v11, "value"

    .line 2957
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    move v7, v5

    goto :goto_1b

    :cond_26
    const-string v11, "currency"

    .line 2959
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    move v10, v5

    :cond_27
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_28
    const/4 v5, -0x1

    if-eq v7, v5, :cond_2f

    .line 2963
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzl()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzj()Z

    move-result v5

    if-nez v5, :cond_29

    .line 2964
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzv()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v5, "Value must be specified with a numeric type."

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    const-string v4, "_c"

    .line 2967
    invoke-static {v15, v4}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;)V

    const/16 v4, 0x12

    const-string v5, "value"

    .line 2968
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;ILjava/lang/String;)V

    goto :goto_1f

    :cond_29
    const/4 v5, -0x1

    if-ne v10, v5, :cond_2a

    const/4 v4, 0x1

    const/4 v11, 0x3

    goto :goto_1e

    .line 2973
    :cond_2a
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzh()Ljava/lang/String;

    move-result-object v4

    .line 2974
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2b

    :goto_1c
    const/4 v4, 0x1

    goto :goto_1e

    :cond_2b
    const/4 v10, 0x0

    .line 2976
    :goto_1d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_2d

    .line 2977
    invoke-virtual {v4, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 2978
    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-nez v13, :cond_2c

    goto :goto_1c

    .line 2981
    :cond_2c
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_1d

    :cond_2d
    const/4 v4, 0x0

    :goto_1e
    if-eqz v4, :cond_30

    .line 2984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 2985
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzv()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v10, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 2986
    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    const-string v4, "_c"

    .line 2989
    invoke-static {v15, v4}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;)V

    const/16 v4, 0x13

    const-string v7, "currency"

    .line 2990
    invoke-static {v15, v4, v7}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;ILjava/lang/String;)V

    goto :goto_20

    :cond_2e
    :goto_1f
    const/4 v5, -0x1

    :cond_2f
    const/4 v11, 0x3

    :cond_30
    :goto_20
    const-string v4, "_e"

    .line 2991
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v12, 0x3e8

    if-eqz v4, :cond_32

    .line 2992
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v7, "_fr"

    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v4

    if-nez v4, :cond_34

    if-eqz v14, :cond_31

    .line 2994
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v16

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v18

    const/4 v4, 0x0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    cmp-long v4, v16, v12

    if-gtz v4, :cond_31

    .line 2995
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzib;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 2996
    invoke-direct {v1, v15, v4}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2999
    invoke-virtual {v3, v9, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :goto_21
    const/4 v14, 0x0

    const/16 v26, 0x0

    goto :goto_22

    :cond_31
    move-object/from16 v26, v15

    move/from16 v8, v25

    goto :goto_22

    :cond_32
    const-string v4, "_vs"

    .line 3005
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3006
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v7, "_et"

    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v4

    if-nez v4, :cond_34

    if-eqz v26, :cond_33

    .line 3008
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v16

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v18

    const/4 v4, 0x0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    cmp-long v4, v16, v12

    if-gtz v4, :cond_33

    .line 3009
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/zzib;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 3010
    invoke-direct {v1, v4, v15}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 3013
    invoke-virtual {v3, v8, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_21

    :cond_33
    move-object v14, v15

    move/from16 v9, v25

    .line 3019
    :cond_34
    :goto_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpi;->zza()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3020
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzcu:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3021
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 3023
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzf()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v7, 0x0

    .line 3024
    :goto_23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza()I

    move-result v10

    if-ge v7, v10, :cond_39

    .line 3025
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v10

    .line 3026
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v12

    const-string v13, "items"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 3027
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzi()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_37

    .line 3028
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3029
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    .line 3031
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzi()Ljava/util/List;

    move-result-object v10

    .line 3032
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/os/Bundle;

    const/4 v5, 0x0

    .line 3033
    :goto_24
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_36

    .line 3034
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 3035
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzi()Ljava/util/List;

    move-result-object v16

    move/from16 v40, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v6

    .line 3036
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzi()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_25
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_35

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move/from16 v41, v8

    .line 3037
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v8

    .line 3038
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v16

    .line 3039
    check-cast v16, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move/from16 v42, v9

    move-object/from16 v9, v16

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    invoke-direct {v1, v8, v9, v6, v12}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    move/from16 v8, v41

    move/from16 v9, v42

    goto :goto_25

    :cond_35
    move/from16 v41, v8

    move/from16 v42, v9

    .line 3041
    aput-object v6, v13, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v40

    move/from16 v8, v41

    move/from16 v9, v42

    goto :goto_24

    :cond_36
    move/from16 v40, v6

    move/from16 v41, v8

    move/from16 v42, v9

    const-string v5, "items"

    .line 3043
    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_26

    :cond_37
    move/from16 v40, v6

    move/from16 v41, v8

    move/from16 v42, v9

    .line 3045
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v5

    const-string v6, "items"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 3047
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v5

    .line 3048
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v6

    .line 3049
    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3050
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    .line 3051
    invoke-direct {v1, v5, v6, v4, v8}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_38
    :goto_26
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v40

    move/from16 v8, v41

    move/from16 v9, v42

    const/4 v5, -0x1

    const/4 v11, 0x3

    goto/16 :goto_23

    :cond_39
    move/from16 v40, v6

    move/from16 v41, v8

    move/from16 v42, v9

    .line 3054
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 3055
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v5

    .line 3056
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3a
    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3058
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v9

    .line 3059
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3a

    .line 3061
    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;Ljava/lang/Object;)V

    .line 3062
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 3065
    :cond_3b
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_3d

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 3066
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    goto :goto_28

    :cond_3c
    move/from16 v40, v6

    move/from16 v41, v8

    move/from16 v42, v9

    .line 3068
    :cond_3d
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzc:Ljava/util/List;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    move/from16 v12, v37

    invoke-interface {v4, v12, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v25, 0x1

    .line 3070
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-object/from16 v13, v26

    move/from16 v6, v40

    move/from16 v8, v41

    move/from16 v9, v42

    :goto_29
    add-int/lit8 v5, v12, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_3e
    move/from16 v24, v6

    move/from16 v25, v7

    const-wide/16 v4, 0x0

    move-wide v8, v4

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v7, :cond_42

    .line 3073
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze;

    move-result-object v10

    const-string v11, "_e"

    .line 3074
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 3075
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v11, "_fr"

    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v11

    if-eqz v11, :cond_3f

    .line 3076
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2c

    .line 3081
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v11, "_et"

    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v10

    if-eqz v10, :cond_41

    .line 3083
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzl()Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_2b

    :cond_40
    const/4 v10, 0x0

    :goto_2b
    if-eqz v10, :cond_41

    .line 3084
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-lez v13, :cond_41

    .line 3085
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    add-long/2addr v8, v10

    :cond_41
    :goto_2c
    const/4 v10, 0x1

    add-int/2addr v6, v10

    goto :goto_2a

    :cond_42
    const/4 v6, 0x0

    .line 3087
    invoke-direct {v1, v3, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;JZ)V

    .line 3089
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v10, "_s"

    .line 3090
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    const/4 v6, 0x1

    goto :goto_2d

    :cond_44
    const/4 v6, 0x0

    :goto_2d
    if-eqz v6, :cond_45

    .line 3095
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    .line 3096
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v7

    const-string v10, "_se"

    .line 3097
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    const-string v6, "_sid"

    .line 3099
    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_46

    const/4 v6, 0x1

    goto :goto_2e

    :cond_46
    const/4 v6, 0x0

    :goto_2e
    if-eqz v6, :cond_47

    const/4 v6, 0x1

    .line 3101
    invoke-direct {v1, v3, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;JZ)V

    goto :goto_2f

    :cond_47
    const-string v6, "_se"

    .line 3103
    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_48

    .line 3105
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v6

    .line 3107
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    const-string v7, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3108
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 3109
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3110
    :cond_48
    :goto_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;)V

    .line 3111
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    .line 3113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 3114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 3115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-nez v7, :cond_49

    .line 3117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v7

    .line 3118
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    const-string v8, "Cannot fix consent fields without appInfo. appId"

    .line 3119
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_30

    .line 3121
    :cond_49
    invoke-virtual {v1, v7, v3}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;)V

    :goto_30
    const-wide v6, 0x7fffffffffffffffL

    .line 3123
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v6

    const-wide/high16 v7, -0x8000000000000000L

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    const/4 v6, 0x0

    .line 3124
    :goto_31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_4c

    .line 3125
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze;

    move-result-object v7

    .line 3126
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzd()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzf()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_4a

    .line 3127
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzd()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3128
    :cond_4a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzd()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_4b

    .line 3129
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzd()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 3131
    :cond_4c
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzs()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3132
    sget-object v6, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3133
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 3134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbf;->zzdf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 3135
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3136
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3137
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzad()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zziq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v7

    .line 3138
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v6

    .line 3140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v7

    .line 3141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 3142
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v8

    if-nez v8, :cond_4d

    .line 3143
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 3144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzo(Ljava/lang/String;)V

    goto :goto_32

    .line 3145
    :cond_4d
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 3146
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v7

    if-nez v7, :cond_4e

    .line 3147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;)V

    .line 3149
    :cond_4e
    :goto_32
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v7

    if-nez v7, :cond_4f

    .line 3150
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3151
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3152
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3153
    :cond_4f
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v7

    if-nez v7, :cond_50

    .line 3154
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3155
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3156
    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 3157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzce:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 3158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzny;->zzd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3159
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v7

    if-eqz v7, :cond_59

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3160
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzas()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 3162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzck:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 3163
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v8

    goto :goto_33

    :cond_51
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzc:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_33
    const/4 v9, 0x0

    :goto_34
    if-ge v9, v8, :cond_59

    if-eqz v7, :cond_52

    .line 3166
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze;

    move-result-object v10

    .line 3167
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v10

    .line 3168
    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    goto :goto_35

    .line 3169
    :cond_52
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzc:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    .line 3170
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v10

    .line 3171
    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 3173
    :goto_35
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzf()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_53
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    const-string v13, "_c"

    .line 3174
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    const/4 v11, 0x1

    goto :goto_36

    :cond_54
    const/4 v11, 0x0

    :goto_36
    if-eqz v11, :cond_58

    .line 3179
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zza()I

    move-result v11

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3181
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbf;->zzav:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v12

    if-lt v11, v12, :cond_57

    .line 3183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbf;->zzcg:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 3184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzny;->zzp()Ljava/lang/String;

    move-result-object v11

    .line 3185
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v12

    const-string v13, "_tu"

    .line 3186
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v12

    .line 3187
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v12

    .line 3188
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 3189
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    goto :goto_37

    :cond_55
    const/4 v11, 0x0

    .line 3190
    :goto_37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v12

    const-string v13, "_tr"

    .line 3191
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v12

    const-wide/16 v13, 0x1

    .line 3192
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v12

    .line 3193
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 3194
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzg;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 3195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbf;->zzci:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 3197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3198
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3, v10, v11}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzna;

    move-result-object v11

    goto :goto_38

    .line 3200
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3201
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3202
    invoke-virtual {v12, v13, v14, v10, v11}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfu$zzj;Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzna;

    move-result-object v11

    :goto_38
    if-eqz v11, :cond_57

    .line 3204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v12

    .line 3205
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v12

    const-string v13, "Generated trigger URI. appId, uri"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3206
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v11, Lcom/google/android/gms/measurement/internal/zzna;->zza:Ljava/lang/String;

    .line 3207
    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzna;)Z

    .line 3209
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzr:Ljava/util/Set;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3210
    :cond_57
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_34

    .line 3212
    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 3213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbf;->zzdf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 3215
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v7

    .line 3216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v8

    .line 3217
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v9

    .line 3218
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v10

    .line 3219
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzab()Ljava/util/List;

    move-result-object v11

    .line 3220
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzf()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3221
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 3222
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v6

    const/4 v14, 0x1

    xor-int/2addr v6, v14

    move v14, v6

    .line 3223
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v6

    .line 3224
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_39

    .line 3226
    :cond_5a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v6

    .line 3227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v7

    .line 3228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v8

    .line 3229
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v9

    .line 3230
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzab()Ljava/util/List;

    move-result-object v10

    .line 3231
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzf()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 3232
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3233
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v7

    .line 3234
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3235
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zzl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 3237
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3238
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzny;->zzv()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v9, 0x0

    .line 3240
    :goto_3a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v10

    if-ge v9, v10, :cond_73

    .line 3241
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zze;

    move-result-object v10

    .line 3242
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v10

    .line 3243
    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 3244
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 3246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v12, "_en"

    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zznr;->zzb(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3247
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v12, :cond_5b

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3251
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3252
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v12

    if-eqz v12, :cond_5b

    .line 3254
    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    if-eqz v12, :cond_5e

    .line 3256
    iget-object v11, v12, Lcom/google/android/gms/measurement/internal/zzaz;->zzi:Ljava/lang/Long;

    if-nez v11, :cond_5e

    .line 3257
    iget-object v11, v12, Lcom/google/android/gms/measurement/internal/zzaz;->zzj:Ljava/lang/Long;

    if-eqz v11, :cond_5c

    iget-object v11, v12, Lcom/google/android/gms/measurement/internal/zzaz;->zzj:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmp-long v11, v13, v15

    if-lez v11, :cond_5c

    .line 3258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v11, "_sr"

    iget-object v13, v12, Lcom/google/android/gms/measurement/internal/zzaz;->zzj:Ljava/lang/Long;

    .line 3259
    invoke-static {v10, v11, v13}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3260
    :cond_5c
    iget-object v11, v12, Lcom/google/android/gms/measurement/internal/zzaz;->zzk:Ljava/lang/Boolean;

    if-eqz v11, :cond_5d

    iget-object v11, v12, Lcom/google/android/gms/measurement/internal/zzaz;->zzk:Ljava/lang/Boolean;

    .line 3261
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 3262
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v11, "_efs"

    const-wide/16 v12, 0x1

    .line 3263
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3264
    :cond_5d
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3265
    :cond_5e
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :goto_3b
    move-object/from16 v45, v2

    move-object v1, v3

    move-object/from16 v47, v8

    move v2, v9

    goto/16 :goto_45

    .line 3268
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3269
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Ljava/lang/String;)J

    move-result-wide v11

    .line 3270
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v13

    invoke-static {v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/zzny;->zza(JJ)J

    move-result-wide v13

    .line 3272
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v4, "_dbg"

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 3273
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_65

    if-nez v5, :cond_60

    goto :goto_3d

    .line 3275
    :cond_60
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzh()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_65

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    .line 3276
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 3277
    instance-of v1, v5, Ljava/lang/Long;

    if-eqz v1, :cond_61

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    :cond_61
    instance-of v1, v5, Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 3278
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    :cond_62
    instance-of v1, v5, Ljava/lang/Double;

    if-eqz v1, :cond_65

    .line 3279
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zza()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_63
    const/4 v1, 0x1

    goto :goto_3e

    :cond_64
    move-object/from16 v1, p0

    goto :goto_3c

    :cond_65
    :goto_3d
    const/4 v1, 0x0

    :goto_3e
    if-nez v1, :cond_66

    .line 3285
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v1

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3286
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_3f

    :cond_66
    const/4 v1, 0x1

    :goto_3f
    if-gtz v1, :cond_67

    .line 3288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 3289
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v5, "Sample rate must be positive. event, rate"

    .line 3290
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v11, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3291
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3292
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto/16 :goto_3b

    .line 3294
    :cond_67
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v4, :cond_68

    .line 3297
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    if-nez v4, :cond_68

    .line 3299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 3300
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v5, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3301
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v43, v11

    .line 3302
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v11

    .line 3303
    invoke-virtual {v4, v5, v15, v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3304
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3305
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v26

    .line 3306
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    .line 3307
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v25, v4

    invoke-direct/range {v25 .. v41}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_40

    :cond_68
    move-wide/from16 v43, v11

    .line 3309
    :goto_40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    const-string v11, "_eid"

    invoke-static {v5, v11}, Lcom/google/android/gms/measurement/internal/zznr;->zzb(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_69

    const/4 v11, 0x1

    goto :goto_41

    :cond_69
    const/4 v11, 0x0

    .line 3310
    :goto_41
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x1

    if-ne v1, v12, :cond_6c

    .line 3312
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3313
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzaz;->zzi:Ljava/lang/Long;

    if-nez v1, :cond_6a

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzaz;->zzj:Ljava/lang/Long;

    if-nez v1, :cond_6a

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzaz;->zzk:Ljava/lang/Boolean;

    if-eqz v1, :cond_6b

    :cond_6a
    const/4 v1, 0x0

    .line 3314
    invoke-virtual {v4, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    .line 3315
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3316
    :cond_6b
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto/16 :goto_3b

    .line 3318
    :cond_6c
    invoke-virtual {v8, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v12

    if-nez v12, :cond_6e

    .line 3319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v5, "_sr"

    move-object/from16 v45, v2

    int-to-long v1, v1

    .line 3320
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v5, v12}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3321
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3322
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 3324
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    .line 3326
    :cond_6d
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3327
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v2

    .line 3328
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    move-object/from16 v47, v8

    move v2, v9

    goto/16 :goto_44

    :cond_6e
    move-object/from16 v45, v2

    .line 3329
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzaz;->zzh:Ljava/lang/Long;

    if-eqz v2, :cond_6f

    .line 3330
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzaz;->zzh:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object/from16 v46, v3

    move-object/from16 v47, v8

    move/from16 v48, v9

    goto :goto_42

    .line 3332
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-object/from16 v46, v3

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzb()J

    move-result-wide v2

    move-object/from16 v47, v8

    move/from16 v48, v9

    move-wide/from16 v8, v43

    invoke-static {v2, v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzny;->zza(JJ)J

    move-result-wide v15

    :goto_42
    cmp-long v2, v15, v13

    if-eqz v2, :cond_71

    .line 3334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v2, "_efs"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3335
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v2, "_sr"

    int-to-long v8, v1

    .line 3336
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v2, v1}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3337
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3338
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3340
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    .line 3342
    :cond_70
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3343
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzc()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3, v13, v14}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v2

    .line 3344
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 3345
    :cond_71
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 3347
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4, v5, v2, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v3

    .line 3348
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    :goto_43
    move-object/from16 v1, v46

    move/from16 v2, v48

    .line 3349
    :goto_44
    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :goto_45
    add-int/lit8 v9, v2, 0x1

    move-object v3, v1

    move-object/from16 v2, v45

    move-object/from16 v8, v47

    move-object/from16 v1, p0

    const-wide/16 v4, 0x0

    goto/16 :goto_3a

    :cond_73
    move-object/from16 v45, v2

    move-object v1, v3

    .line 3351
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v3

    if-ge v2, v3, :cond_74

    .line 3352
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3353
    :cond_74
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzaz;)V

    goto :goto_46

    :cond_75
    move-object/from16 v2, v45

    goto :goto_47

    :cond_76
    move-object v1, v3

    .line 3356
    :goto_47
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v3

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-nez v4, :cond_77

    .line 3359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 3360
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3361
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3362
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 3363
    :cond_77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v5

    if-lez v5, :cond_7d

    .line 3364
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_78

    .line 3366
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_48

    .line 3367
    :cond_78
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzo()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3368
    :goto_48
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_79

    goto :goto_49

    :cond_79
    move-wide v5, v7

    :goto_49
    cmp-long v7, v5, v9

    if-eqz v7, :cond_7a

    .line 3372
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_4a

    .line 3373
    :cond_7a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzp()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3374
    :goto_4a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbf;->zzbt:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzny;->zzf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3377
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    .line 3378
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_4b

    .line 3379
    :cond_7b
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzap()V

    .line 3380
    :goto_4b
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3381
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    .line 3382
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    .line 3383
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzab()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7c

    .line 3385
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_4c

    .line 3386
    :cond_7c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 3387
    :goto_4c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    const/4 v6, 0x0

    .line 3388
    invoke-virtual {v5, v4, v6, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 3389
    :cond_7d
    :goto_4d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v4

    if-lez v4, :cond_81

    .line 3391
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v4

    if-eqz v4, :cond_7f

    .line 3392
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzs()Z

    move-result v5

    if-nez v5, :cond_7e

    goto :goto_4e

    .line 3399
    :cond_7e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_4f

    .line 3393
    :cond_7f
    :goto_4e
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_80

    const-wide/16 v4, -0x1

    .line 3394
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_4f

    .line 3395
    :cond_80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 3396
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 3397
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3398
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3400
    :goto_4f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    move/from16 v12, v24

    invoke-virtual {v4, v1, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj;Z)Z

    .line 3401
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzni$zza;->zzb:Ljava/util/List;

    .line 3402
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3403
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 3404
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    .line 3405
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 3406
    :goto_50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_83

    if-eqz v5, :cond_82

    const-string v6, ","

    .line 3408
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3409
    :cond_82
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_83
    const-string v5, ")"

    .line 3411
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3412
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "raw_events"

    .line 3413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3414
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_84

    .line 3415
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 3416
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v5, "Deleted fewer rows from raw events table than expected"

    .line 3417
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3418
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3419
    invoke-virtual {v1, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3420
    :cond_84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    .line 3421
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    .line 3422
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    goto :goto_51

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 3425
    :try_start_21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 3426
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 3427
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3428
    :goto_51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 3429
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    const/4 v1, 0x1

    return v1

    .line 3431
    :cond_85
    :try_start_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 3432
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    const/4 v1, 0x0

    return v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    :goto_52
    if-eqz v8, :cond_86

    .line 2794
    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2795
    :cond_86
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 3434
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 3435
    throw v1

    :goto_53
    nop

    goto :goto_53
.end method

.method private final zzaa()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 518
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzu:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzv:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzq:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 530
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzq:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 519
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzu:Z

    .line 521
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzv:Z

    .line 522
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 523
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 524
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzab()V
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    .line 1756
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1757
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1758
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 1759
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 1760
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    sub-long/2addr v1, v7

    .line 1761
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 1763
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 1764
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 1765
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1766
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1767
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzy()Lcom/google/android/gms/measurement/internal/zzgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgj;->zzb()V

    .line 1768
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzz()Lcom/google/android/gms/measurement/internal/zznc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzu()V

    return-void

    .line 1770
    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    .line 1771
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzac()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    .line 1777
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1779
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzaa:Lcom/google/android/gms/measurement/internal/zzfq;

    const/4 v6, 0x0

    .line 1780
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1781
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1784
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzz()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzy()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    .line 1786
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzn()Ljava/lang/String;

    move-result-object v10

    .line 1787
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1789
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzv:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 1790
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1791
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 1793
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1794
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzu:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 1795
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1796
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 1799
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1800
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzt:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 1801
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1802
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1805
    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1806
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v12

    .line 1808
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1809
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzmi;->zzd:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v14

    .line 1810
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzal;->c_()J

    move-result-wide v9

    .line 1811
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->d_()J

    move-result-wide v6

    .line 1812
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_8

    :cond_7
    move-wide v8, v3

    goto/16 :goto_5

    :cond_8
    const/4 v8, 0x0

    sub-long/2addr v6, v1

    .line 1815
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 1816
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 1817
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 1818
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_9

    cmp-long v5, v8, v3

    if-lez v5, :cond_9

    .line 1821
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 1822
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zznr;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_a

    add-long/2addr v8, v12

    goto :goto_3

    :cond_a
    move-wide v8, v10

    :goto_3
    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    cmp-long v5, v1, v6

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    .line 1826
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    const/16 v6, 0x14

    .line 1827
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzac:Lcom/google/android/gms/measurement/internal/zzfq;

    const/4 v10, 0x0

    .line 1828
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1829
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_7

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 1832
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1833
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbf;->zzab:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 1834
    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1835
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v8, v12

    cmp-long v6, v8, v1

    if-lez v6, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    cmp-long v1, v8, v3

    if-nez v1, :cond_d

    .line 1844
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 1845
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzy()Lcom/google/android/gms/measurement/internal/zzgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgj;->zzb()V

    .line 1846
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzz()Lcom/google/android/gms/measurement/internal/zznc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzu()V

    return-void

    .line 1848
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzu()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1849
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 1850
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzy()Lcom/google/android/gms/measurement/internal/zzgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()V

    .line 1851
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzz()Lcom/google/android/gms/measurement/internal/zznc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzu()V

    return-void

    .line 1854
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1855
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmi;->zzb:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v1

    .line 1856
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1857
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzr:Lcom/google/android/gms/measurement/internal/zzfq;

    const/4 v6, 0x0

    .line 1858
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1859
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1861
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zznr;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    add-long/2addr v1, v5

    .line 1862
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1863
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzy()Lcom/google/android/gms/measurement/internal/zzgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgj;->zzb()V

    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_10

    .line 1866
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1867
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzw:Lcom/google/android/gms/measurement/internal/zzfq;

    const/4 v2, 0x0

    .line 1868
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1869
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1872
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1873
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 1874
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1875
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzz()Lcom/google/android/gms/measurement/internal/zznc;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zznc;->zza(J)V

    return-void

    .line 1772
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 1773
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzy()Lcom/google/android/gms/measurement/internal/zzgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgj;->zzb()V

    .line 1774
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzz()Lcom/google/android/gms/measurement/internal/zznc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzu()V

    return-void
.end method

.method private final zzac()Z
    .locals 1

    .line 3437
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 3438
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 3439
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3440
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->f_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzad()Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 3442
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 3443
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzx:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzx:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3444
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v2, "Storage concurrent access okay"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "google_app_measurement.db"

    .line 3449
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v2

    .line 3450
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 3451
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzci;->zza()Lcom/google/android/gms/internal/measurement/zzch;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/google/android/gms/internal/measurement/zzch;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3452
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzy:Ljava/nio/channels/FileChannel;

    .line 3453
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzy:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzx:Ljava/nio/channels/FileLock;

    .line 3454
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzx:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 3455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v2, "Storage concurrent access okay"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    return v1

    .line 3457
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3466
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3463
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 946
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 947
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    .line 948
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Landroid/os/Bundle;

    .line 949
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 950
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 951
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    .line 952
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)I

    move-result v1

    .line 953
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zzgd;I)V

    .line 954
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    const-string v0, "_cmp"

    .line 956
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "referrer API v2"

    .line 957
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v2, "_cis"

    .line 958
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 961
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v3, "_lgclid"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 964
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpc;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpc;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_cmp"

    .line 966
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "referrer API v2"

    .line 967
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v2, "_cis"

    .line 968
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v1, "gbraid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 971
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v3, "_gbraid"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 974
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 573
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 576
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 579
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 580
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v1

    .line 583
    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zze:Lcom/google/android/gms/measurement/internal/zzfq;

    const/4 v3, 0x0

    .line 584
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 585
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzf:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 586
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 587
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "config/app/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "platform"

    const-string v4, "android"

    .line 589
    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gmp_version"

    const-string v4, "92000"

    .line 590
    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "runtime_version"

    const-string v4, "0"

    .line 591
    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 592
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 595
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v1

    .line 599
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 601
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 602
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 603
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v3, :cond_3

    .line 607
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v3, v2

    :cond_3
    const-string v2, "If-None-Match"

    .line 608
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v9, v3

    const/4 v1, 0x1

    .line 609
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzu:Z

    .line 610
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v5

    new-instance v10, Lcom/google/android/gms/measurement/internal/zznj;

    invoke-direct {v10, p0}, Lcom/google/android/gms/measurement/internal/zznj;-><init>(Lcom/google/android/gms/measurement/internal/zzni;)V

    .line 612
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 613
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    .line 614
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzim;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzgk;

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/measurement/internal/zzgg;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgf;)V

    .line 617
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 620
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 622
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 623
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;
    .locals 42
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    const/4 v0, 0x0

    if-eqz v15, :cond_2

    .line 184
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v14, p0

    .line 187
    invoke-direct {v14, v15}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "App version does not match; dropping. appId"

    .line 191
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 193
    :cond_1
    new-instance v41, Lcom/google/android/gms/measurement/internal/zzo;

    move-object/from16 v0, v41

    .line 194
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v4

    .line 197
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v7

    .line 199
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 200
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzar()Z

    move-result v12

    const/4 v13, 0x0

    .line 201
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    .line 202
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()J

    move-result-wide v16

    move-object/from16 v40, v15

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    .line 203
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq()Z

    move-result v20

    const/16 v21, 0x0

    .line 204
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v22

    .line 205
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/Boolean;

    move-result-object v23

    .line 206
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v24

    .line 207
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzan()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    .line 208
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zziq;->zzh()Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    const/16 v30, 0x0

    .line 209
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzat()Z

    move-result v31

    .line 210
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()J

    move-result-wide v32

    .line 211
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zziq;->zza()I

    move-result v34

    .line 212
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/measurement/internal/zzav;->zzf()Ljava/lang/String;

    move-result-object v35

    .line 213
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zza()I

    move-result v36

    .line 214
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()J

    move-result-wide v37

    .line 215
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzam()Ljava/lang/String;

    move-result-object v39

    .line 216
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v40}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v41

    .line 185
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 26
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2269
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2271
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 2274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 2275
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 2278
    :cond_0
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v7, :cond_1

    .line 2279
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2281
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzgz;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const/4 v15, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    .line 2282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 2283
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Dropping blocked event. appId"

    .line 2284
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2285
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v7

    .line 2286
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2287
    invoke-virtual {v3, v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2289
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzm(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2290
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v13, 0x1

    :cond_3
    if-nez v13, :cond_4

    const-string v3, "_err"

    .line 2291
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    const/16 v9, 0xb

    const-string v10, "_ev"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v8, v6

    .line 2293
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v13, :cond_5

    .line 2295
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2298
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 2300
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 2301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2302
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzz:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 2303
    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2304
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 2306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 2307
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_5
    return-void

    .line 2309
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    .line 2310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v7

    .line 2311
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)I

    move-result v8

    .line 2312
    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zzgd;I)V

    .line 2313
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbf;->zzcc:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    .line 2316
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbf;->zzaq:Lcom/google/android/gms/measurement/internal/zzfq;

    const/16 v9, 0xa

    const/16 v10, 0x23

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;II)I

    move-result v7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    .line 2319
    :goto_0
    new-instance v8, Ljava/util/TreeSet;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2320
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "items"

    .line 2321
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2322
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Landroid/os/Bundle;

    .line 2323
    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 2324
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbf;->zzcc:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    .line 2326
    :goto_2
    invoke-virtual {v10, v9, v7, v11}, Lcom/google/android/gms/measurement/internal/zzny;->zza([Landroid/os/Parcelable;IZ)V

    goto :goto_1

    .line 2328
    :cond_a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v7

    .line 2331
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    const-string v9, "Logging event"

    .line 2332
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v10

    .line 2333
    invoke-virtual {v10, v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2334
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzph;->zza()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzbz:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    .line 2335
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 2336
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v7, "ecommerce_purchase"

    .line 2337
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    .line 2338
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "purchase"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    .line 2339
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "refund"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    .line 2340
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v7, 0x1

    :goto_4
    const-string v9, "_iap"

    .line 2341
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    .line 2342
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v7, :cond_f

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_19

    .line 2345
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v10, "currency"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_13

    .line 2347
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v10, "value"

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzbc;->zza(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v10, v10, v16

    const-wide/16 v18, 0x0

    cmpl-double v7, v10, v18

    if-nez v7, :cond_11

    .line 2349
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v10, "value"

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    :cond_11
    const-wide/high16 v16, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, v10, v16

    if-gtz v7, :cond_12

    const-wide/high16 v16, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v7, v10, v16

    if-ltz v7, :cond_12

    .line 2351
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-string v7, "refund"

    .line 2352
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    neg-long v10, v10

    goto :goto_7

    .line 2354
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v7

    .line 2355
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    .line 2356
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2357
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 2358
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    const/16 v16, 0x1

    goto/16 :goto_d

    .line 2361
    :cond_13
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v10, "value"

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2362
    :cond_14
    :goto_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 2363
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "[A-Z]{3}"

    .line 2364
    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2365
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "_ltv_"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    invoke-virtual {v7, v6, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 2367
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-nez v9, :cond_15

    goto :goto_8

    .line 2384
    :cond_15
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2385
    new-instance v16, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:Ljava/lang/String;

    .line 2386
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    add-long/2addr v7, v10

    .line 2387
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v7, v16

    move-object v8, v6

    move-object v10, v12

    move-wide/from16 v11, v17

    const/4 v15, 0x0

    move-object/from16 v13, v19

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v14, v16

    const/16 v16, 0x1

    goto :goto_b

    :cond_16
    :goto_8
    const/4 v15, 0x0

    .line 2368
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    .line 2369
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    .line 2370
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbf;->zzae:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v9, v6, v13}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v9

    sub-int/2addr v9, v14

    .line 2372
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2373
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 2374
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2375
    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v14, 0x3

    .line 2376
    new-array v14, v14, [Ljava/lang/String;

    aput-object v6, v14, v15
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v16, 0x1

    :try_start_3
    aput-object v6, v14, v16

    .line 2377
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    aput-object v9, v14, v17

    .line 2378
    invoke-virtual {v13, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    :goto_9
    move-object v8, v0

    .line 2381
    :try_start_4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    const-string v9, "Error pruning currencies. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v9, v13, v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2382
    :goto_a
    new-instance v14, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:Ljava/lang/String;

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v14

    move-object v8, v6

    move-object v10, v12

    move-wide/from16 v11, v17

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2388
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zznv;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v7

    .line 2390
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    .line 2391
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2392
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v10

    .line 2393
    iget-object v11, v14, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v14, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 2394
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v6

    .line 2396
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :cond_17
    const/4 v15, 0x0

    const/16 v16, 0x1

    :cond_18
    :goto_c
    const/4 v13, 0x1

    :goto_d
    if-nez v13, :cond_1a

    .line 2399
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :cond_19
    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 2402
    :cond_1a
    :try_start_5
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzny;->zzh(Ljava/lang/String;)Z

    move-result v19

    const-string v7, "_err"

    .line 2403
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 2404
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zzbc;)J

    move-result-wide v7

    const-wide/16 v13, 0x1

    add-long v11, v7, v13

    .line 2406
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    .line 2407
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzx()J

    move-result-wide v8

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v10, v6

    move-wide/from16 v24, v4

    move-wide v4, v13

    move/from16 v13, v17

    move/from16 v14, v19

    const/4 v4, 0x0

    move/from16 v15, v18

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v23

    .line 2408
    invoke-virtual/range {v7 .. v18}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;JZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 2409
    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2410
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzk:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 2411
    invoke-virtual {v9, v4}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 2412
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    const-wide/16 v14, 0x0

    cmp-long v11, v7, v14

    if-lez v11, :cond_1c

    .line 2415
    rem-long/2addr v7, v9

    const-wide/16 v2, 0x1

    cmp-long v4, v7, v2

    if-nez v4, :cond_1b

    .line 2416
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 2417
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 2418
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    .line 2419
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2420
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2421
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2422
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :cond_1c
    if-eqz v19, :cond_1e

    .line 2425
    :try_start_6
    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2426
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbf;->zzm:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 2427
    invoke-virtual {v11, v4}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2428
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v7, v11

    cmp-long v11, v7, v14

    if-lez v11, :cond_1e

    .line 2431
    rem-long/2addr v7, v9

    const-wide/16 v3, 0x1

    cmp-long v9, v7, v3

    if-nez v9, :cond_1d

    .line 2432
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 2433
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 2434
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-wide v8, v5, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    .line 2435
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2436
    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2437
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    const/16 v9, 0x10

    const-string v10, "_ev"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v8, v6

    .line 2438
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2439
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2440
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :cond_1e
    if-eqz v20, :cond_20

    .line 2443
    :try_start_7
    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    .line 2444
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2445
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbf;->zzl:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v9

    const v10, 0xf4240

    .line 2446
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v12, 0x0

    .line 2447
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    cmp-long v9, v7, v14

    if-lez v9, :cond_21

    const-wide/16 v9, 0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_1f

    .line 2451
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 2452
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 2453
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    .line 2454
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2455
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2456
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :cond_20
    const/4 v12, 0x0

    .line 2459
    :cond_21
    :try_start_8
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb()Landroid/os/Bundle;

    move-result-object v5

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v7

    const-string v8, "_o"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2461
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzac:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzny;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2462
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v7

    const-string v8, "_dbg"

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v5, v8, v11}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v7

    const-string v8, "_r"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v5, v8, v11}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const-string v7, "_s"

    .line 2464
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v9, "_sno"

    .line 2467
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 2468
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Long;

    if-eqz v8, :cond_23

    .line 2469
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v8

    const-string v9, "_sno"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    invoke-virtual {v8, v5, v9, v7}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2470
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v14

    if-lez v9, :cond_24

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v9

    .line 2473
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v9

    const-string v10, "Data lost. Too many events stored on disk, deleted. appId"

    .line 2474
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2475
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2476
    invoke-virtual {v9, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2477
    :cond_24
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzba;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    const-wide/16 v16, 0x0

    move-object v7, v13

    move-object v10, v6

    move-object v2, v13

    const/4 v4, 0x0

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-object/from16 v16, v5

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 2478
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v5

    if-nez v5, :cond_26

    .line 2480
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;)J

    move-result-wide v7

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;)I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_25

    if-eqz v19, :cond_25

    .line 2482
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 2483
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    .line 2484
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2485
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v7

    .line 2486
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2487
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2488
    invoke-virtual {v3, v4, v5, v2, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2489
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v6

    .line 2490
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2491
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    .line 2493
    :cond_25
    :try_start_9
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzc:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v5

    move-object v8, v6

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v13, v2

    goto :goto_e

    .line 2495
    :cond_26
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/zzaz;->zzf:J

    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzhm;J)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v13

    .line 2496
    iget-wide v6, v13, Lcom/google/android/gms/measurement/internal/zzba;->zzc:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(J)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v5

    .line 2497
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzaz;)V

    .line 2500
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 2501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 2502
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2505
    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2506
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzv()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v2

    const-string v6, "android"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v2

    .line 2507
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 2508
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2509
    :cond_27
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 2510
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2511
    :cond_28
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 2512
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2513
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2514
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzbq:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 2515
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbf;->zzbs:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2516
    :cond_2a
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2517
    :cond_2b
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    const-wide/32 v8, -0x80000000

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2c

    .line 2518
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    long-to-int v6, v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2519
    :cond_2c
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2520
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 2521
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2522
    :cond_2d
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2523
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 2524
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zziq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v6

    .line 2525
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2526
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 2527
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2528
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 2529
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzce:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 2530
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzny;->zzd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 2531
    iget v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzaa:I

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2532
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzab:J

    .line 2533
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v6

    const-wide/16 v9, 0x20

    if-nez v6, :cond_2f

    const-wide/16 v11, 0x0

    cmp-long v6, v7, v11

    if-eqz v6, :cond_30

    const-wide/16 v14, -0x2

    and-long/2addr v7, v14

    or-long/2addr v7, v9

    goto :goto_f

    :cond_2f
    const-wide/16 v11, 0x0

    :cond_30
    :goto_f
    const-wide/16 v14, 0x1

    cmp-long v6, v7, v14

    if-nez v6, :cond_31

    const/4 v6, 0x1

    goto :goto_10

    :cond_31
    const/4 v6, 0x0

    .line 2536
    :goto_10
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    cmp-long v6, v7, v11

    if-eqz v6, :cond_3a

    .line 2540
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzb;->zza()Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    move-result-object v6

    and-long v16, v7, v14

    cmp-long v14, v16, v11

    if-eqz v14, :cond_32

    const/4 v14, 0x1

    goto :goto_11

    :cond_32
    const/4 v14, 0x0

    .line 2541
    :goto_11
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    const-wide/16 v14, 0x2

    and-long/2addr v14, v7

    cmp-long v16, v14, v11

    if-eqz v16, :cond_33

    const/4 v14, 0x1

    goto :goto_12

    :cond_33
    const/4 v14, 0x0

    .line 2542
    :goto_12
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;->zze(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    const-wide/16 v14, 0x4

    and-long/2addr v14, v7

    cmp-long v16, v14, v11

    if-eqz v16, :cond_34

    const/4 v14, 0x1

    goto :goto_13

    :cond_34
    const/4 v14, 0x0

    .line 2543
    :goto_13
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;->zzf(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    const-wide/16 v14, 0x8

    and-long/2addr v14, v7

    cmp-long v16, v14, v11

    if-eqz v16, :cond_35

    const/4 v14, 0x1

    goto :goto_14

    :cond_35
    const/4 v14, 0x0

    .line 2544
    :goto_14
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;->zzg(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    const-wide/16 v14, 0x10

    and-long/2addr v14, v7

    cmp-long v16, v14, v11

    if-eqz v16, :cond_36

    const/4 v14, 0x1

    goto :goto_15

    :cond_36
    const/4 v14, 0x0

    .line 2545
    :goto_15
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    and-long/2addr v9, v7

    cmp-long v14, v9, v11

    if-eqz v14, :cond_37

    const/4 v9, 0x1

    goto :goto_16

    :cond_37
    const/4 v9, 0x0

    .line 2546
    :goto_16
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    const-wide/16 v9, 0x40

    and-long/2addr v7, v9

    cmp-long v9, v7, v11

    if-eqz v9, :cond_38

    const/4 v7, 0x1

    goto :goto_17

    :cond_38
    const/4 v7, 0x0

    .line 2547
    :goto_17
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzb$zza;

    .line 2548
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfu$zzb;

    .line 2549
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzb;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_18

    :cond_39
    const-wide/16 v11, 0x0

    .line 2550
    :cond_3a
    :goto_18
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    cmp-long v8, v6, v11

    if-eqz v8, :cond_3b

    .line 2551
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2552
    :cond_3b
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2553
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zznr;->zzu()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 2555
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2556
    :cond_3c
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2557
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 2558
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zziq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v6

    .line 2559
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v7

    if-eqz v7, :cond_41

    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    if-eqz v7, :cond_41

    .line 2561
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2562
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2563
    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzmi;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 2564
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 2565
    iget-boolean v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    if-eqz v8, :cond_41

    .line 2566
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2567
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_3d

    .line 2568
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2569
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzcr:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    const-string v9, "_fx"

    .line 2571
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-string v8, "00000000-0000-0000-0000-000000000000"

    .line 2572
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 2573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 2574
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzau()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 2575
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v1, v8, v4, v9, v9}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2576
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzdc:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 2578
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_3e

    const-string v10, "_pfo"

    .line 2581
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 2582
    invoke-virtual {v8, v10, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2583
    :cond_3e
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_40

    const-string v9, "_uwa"

    .line 2585
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8, v9, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_19

    .line 2586
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbf;->zzdb:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 2588
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v7, 0x0

    const-wide/16 v14, 0x1

    sub-long/2addr v9, v14

    const-string v7, "_pfo"

    .line 2590
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2591
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_40
    :goto_19
    const-string v7, "_r"

    const-wide/16 v9, 0x1

    .line 2592
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2593
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v10, "_fx"

    invoke-interface {v7, v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zznx;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2595
    :cond_41
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhm;->zzg()Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v7

    .line 2596
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzip;->zzac()V

    .line 2597
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2598
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v7

    .line 2599
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhm;->zzg()Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v8

    .line 2600
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzip;->zzac()V

    .line 2601
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2602
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v7

    .line 2603
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhm;->zzg()Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v8

    .line 2604
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzax;->zzg()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v7

    .line 2605
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhm;->zzg()Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v8

    .line 2606
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzax;->zzh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2607
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzx:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2608
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhm;->zzac()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 2609
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    const/4 v7, 0x0

    .line 2610
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 2611
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2612
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-nez v7, :cond_44

    .line 2614
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;Ljava/lang/String;)V

    .line 2615
    invoke-direct {v1, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    .line 2616
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 2617
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 2620
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2621
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    .line 2622
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzmi;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 2623
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    .line 2624
    :cond_43
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 2625
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    .line 2626
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    .line 2627
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    .line 2628
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    .line 2629
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    .line 2630
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzn(J)V

    .line 2631
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(J)V

    .line 2632
    iget-boolean v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    .line 2633
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzl(J)V

    .line 2634
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    .line 2635
    invoke-virtual {v8, v7, v4, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 2636
    :cond_44
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2637
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 2638
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2639
    :cond_45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 2640
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2641
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzk(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    .line 2642
    :goto_1a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_48

    .line 2643
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzn;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v9

    .line 2644
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v9

    .line 2645
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zznv;

    iget-wide v14, v10, Lcom/google/android/gms/measurement/internal/zznv;->zzd:J

    invoke-virtual {v9, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v9

    .line 2646
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v10

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v9, v14}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;Ljava/lang/Object;)V

    .line 2647
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    const-string v9, "_sid"

    .line 2648
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 2649
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v9

    cmp-long v14, v9, v11

    if-eqz v14, :cond_47

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Ljava/lang/String;)J

    move-result-wide v9

    .line 2652
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v14

    cmp-long v16, v9, v14

    if-eqz v16, :cond_47

    .line 2653
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 2656
    :cond_48
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj;)J

    move-result-wide v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2664
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    .line 2665
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzba;->zze:Lcom/google/android/gms/measurement/internal/zzbc;

    if-eqz v3, :cond_4b

    .line 2666
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzba;->zze:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbc;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "_r"

    .line 2667
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    goto :goto_1b

    .line 2670
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v3

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    iget-object v9, v13, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 2672
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v14

    .line 2673
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzx()J

    move-result-wide v15

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v8

    .line 2674
    invoke-virtual/range {v14 .. v23}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    if-eqz v3, :cond_4b

    .line 2675
    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    .line 2676
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    iget-object v10, v13, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Ljava/lang/String;)I

    move-result v3

    int-to-long v14, v3

    cmp-long v3, v8, v14

    if-gez v3, :cond_4b

    goto :goto_1b

    :cond_4b
    const/4 v5, 0x0

    .line 2677
    :goto_1b
    invoke-virtual {v2, v13, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzba;JZ)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2678
    iput-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    goto :goto_1c

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 2659
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 2660
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 2661
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2662
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2679
    :cond_4c
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2680
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 2684
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V

    .line 2685
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 2686
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    .line 2687
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v24

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2688
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2682
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 2683
    throw v2

    :goto_1d
    nop

    goto :goto_1d
.end method

.method private final zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzav;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzad:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzav;

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzad:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private final zzg(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/Boolean;
    .locals 3

    .line 361
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzq:Ljava/lang/Boolean;

    .line 362
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzcy:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    .line 364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    .line 366
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zza()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object p1

    .line 368
    sget-object v1, Lcom/google/android/gms/measurement/internal/zznn;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzit;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 371
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 369
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static zzh(Lcom/google/android/gms/measurement/internal/zzo;)Z
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzx()J
    .locals 8

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 44
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzmi;->zze:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzny;->zzv()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 47
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzmi;->zze:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    :cond_0
    const/4 v2, 0x0

    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 50
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzy()Lcom/google/android/gms/measurement/internal/zzgj;
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzz()Lcom/google/android/gms/measurement/internal/zznc;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzf:Lcom/google/android/gms/measurement/internal/zznc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznc;

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfo$zza;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzb()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/zzah;-><init>()V

    .line 64
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzc(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    const-string v3, "_npa"

    .line 70
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzah;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)I

    move-result p1

    :goto_0
    const-string v1, "ad_personalization"

    if-ne p1, v2, :cond_3

    const-string p1, "denied"

    goto :goto_1

    :cond_3
    const-string p1, "granted"

    .line 76
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzae:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzni$zzb;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzu:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzni$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzni;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznq;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 88
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 90
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zziq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 94
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    .line 95
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzmi;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 98
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    .line 101
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 103
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 106
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    .line 107
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    if-eqz v3, :cond_7

    const-string v3, "00000000-0000-0000-0000-000000000000"

    .line 108
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 109
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 110
    invoke-virtual {v6, v7, v2}, Lcom/google/android/gms/measurement/internal/zzmi;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 111
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbf;->zzda:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v5, :cond_7

    .line 113
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzdf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    .line 117
    :cond_6
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 119
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v6, "_id"

    .line 120
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v6, "_lair"

    .line 124
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v3

    if-nez v3, :cond_9

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    .line 127
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v7, "auto"

    const-string v8, "_lair"

    const-wide/16 v11, 0x1

    .line 128
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zznv;)Z

    goto :goto_3

    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzda:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zziq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_9
    :goto_3
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    .line 138
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    .line 139
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 140
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 141
    :cond_a
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_b

    .line 142
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzn(J)V

    .line 143
    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 144
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    .line 145
    :cond_c
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    .line 146
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 147
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    .line 148
    :cond_d
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(J)V

    .line 149
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    .line 150
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 151
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 152
    :cond_e
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    .line 153
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzq:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Boolean;)V

    .line 154
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzl(J)V

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzbq:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbf;->zzbs:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 158
    :cond_f
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzj(Ljava/lang/String;)V

    .line 159
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoq;->zza()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzbp:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 160
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/util/List;)V

    goto :goto_4

    .line 161
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoq;->zza()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzbo:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/util/List;)V

    .line 163
    :cond_12
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzbt:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 166
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzw:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzbu:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 168
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    .line 169
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzce:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 170
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzaa:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(I)V

    .line 171
    :cond_14
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzx:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzcy:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 174
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 175
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzdf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result p1

    if-nez p1, :cond_16

    if-eqz v2, :cond_18

    .line 178
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    goto :goto_5

    .line 179
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v0, v4, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    :cond_18
    :goto_5
    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzae;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1448
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1452
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1454
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1458
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1459
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzni;->zzh(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1461
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_1

    .line 1462
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1464
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1465
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 1466
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1468
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1470
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 1471
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1472
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v5

    .line 1473
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1474
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1475
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    if-eqz v1, :cond_2

    .line 1477
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbd;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 1480
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    if-eqz v3, :cond_3

    .line 1481
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v4, v1

    .line 1483
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 1484
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbd;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1485
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    .line 1486
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_0

    .line 1488
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    .line 1489
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1490
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1491
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    .line 1492
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1493
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1494
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 1497
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1498
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 760
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 765
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 766
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    .line 767
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 771
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzaf:Lcom/google/android/gms/measurement/internal/zzkv;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzag:Ljava/lang/String;

    .line 772
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzaf:Lcom/google/android/gms/measurement/internal/zzkv;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 775
    :goto_1
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-static {v4, v5, v12}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zzkv;Landroid/os/Bundle;Z)V

    .line 776
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v3

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 779
    :cond_2
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v4, :cond_3

    .line 780
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 782
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 783
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 784
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ga_safelisted"

    const-wide/16 v6, 0x1

    .line 785
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 786
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:Ljava/lang/String;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    goto :goto_2

    .line 788
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v4, "Dropping non-safelisted event. appId, event name, origin"

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:Ljava/lang/String;

    .line 790
    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v13, v3

    .line 792
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 794
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    .line 795
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 796
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 797
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v14, 0x1

    cmp-long v7, v10, v5

    if-gez v7, :cond_6

    .line 799
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 800
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v7, "Invalid time querying timed out conditional properties"

    .line 801
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 802
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 803
    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 804
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :cond_6
    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 806
    new-array v8, v4, [Ljava/lang/String;

    aput-object v2, v8, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    .line 807
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 808
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v7, :cond_7

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v8

    .line 811
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    const-string v9, "User property timed out"

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 812
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v14

    .line 813
    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v14, v12}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 814
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v14

    .line 815
    invoke-virtual {v8, v9, v15, v12, v14}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzg:Lcom/google/android/gms/measurement/internal/zzbd;

    if-eqz v8, :cond_8

    .line 817
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzg:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;J)V

    invoke-direct {v1, v8, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 818
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v8, v2, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_4

    .line 821
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    .line 822
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 824
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    cmp-long v7, v10, v5

    if-gez v7, :cond_a

    .line 826
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 827
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v7, "Invalid time querying expired conditional properties"

    .line 828
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 829
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 830
    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_a
    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 833
    new-array v8, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v8, v12

    .line 834
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 836
    :goto_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 837
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v8, :cond_b

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v9

    .line 840
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v9

    const-string v12, "User property expired"

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 841
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v15

    .line 842
    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 843
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 844
    invoke-virtual {v9, v12, v14, v4, v15}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v4, v2, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbd;

    if-eqz v4, :cond_c

    .line 847
    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v4, v2, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_6

    .line 850
    :cond_d
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_e

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzbd;

    .line 851
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-direct {v9, v8, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;J)V

    invoke-direct {v1, v9, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_7

    .line 854
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    .line 855
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 856
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 857
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 858
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    cmp-long v7, v10, v5

    if-gez v7, :cond_f

    .line 860
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v5

    .line 861
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    const-string v6, "Invalid time querying triggered conditional properties"

    .line 862
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 863
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 864
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 865
    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 866
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v12, 0x0

    goto :goto_8

    :cond_f
    const-string v5, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v6, 0x3

    .line 868
    new-array v6, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v6, v12

    const/4 v2, 0x1

    aput-object v4, v6, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v6, v4

    .line 869
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 871
    :goto_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 872
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v15, :cond_10

    .line 874
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 875
    new-instance v9, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 876
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    .line 877
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v3, v9

    move-wide v7, v10

    move-object v12, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zznv;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 881
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 882
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    .line 883
    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 884
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 885
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 886
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 887
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 888
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v6

    .line 889
    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 890
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 891
    :goto_a
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbd;

    if-eqz v3, :cond_12

    .line 892
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_12
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznt;

    invoke-direct {v3, v12}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    iput-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    const/4 v3, 0x1

    .line 894
    iput-boolean v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzae;)Z

    const/4 v12, 0x0

    goto/16 :goto_9

    .line 897
    :cond_13
    invoke-direct {v1, v13, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 898
    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_14

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzbd;

    .line 899
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-direct {v5, v4, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;J)V

    invoke-direct {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_b

    .line 901
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 905
    throw v0

    :goto_c
    nop

    goto :goto_c
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;)V
    .locals 44
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 907
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 910
    :cond_0
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "_ui"

    .line 912
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 916
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    .line 917
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 918
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 920
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzo;

    move-object v2, v14

    .line 921
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v4

    .line 922
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v5

    .line 923
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v6

    .line 924
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()Ljava/lang/String;

    move-result-object v8

    .line 925
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v9

    .line 926
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 927
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzar()Z

    move-result v16

    move-object/from16 v43, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v42, v15

    move/from16 v15, v16

    .line 928
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v16

    .line 929
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 930
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq()Z

    move-result v22

    const/16 v23, 0x0

    .line 931
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v24

    .line 932
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/Boolean;

    move-result-object v25

    .line 933
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v26

    .line 934
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzan()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    .line 935
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zziq;->zzh()Ljava/lang/String;

    move-result-object v30

    const-string v31, ""

    const/16 v32, 0x0

    .line 936
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzat()Z

    move-result v33

    .line 937
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()J

    move-result-wide v34

    .line 938
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/gms/measurement/internal/zziq;->zza()I

    move-result v36

    .line 939
    invoke-direct {v0, v3}, Lcom/google/android/gms/measurement/internal/zzni;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/measurement/internal/zzav;->zzf()Ljava/lang/String;

    move-result-object v37

    .line 940
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zza()I

    move-result v38

    .line 941
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()J

    move-result-wide v39

    .line 942
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzam()Ljava/lang/String;

    move-result-object v41

    .line 943
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v42}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v43

    .line 944
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void

    .line 908
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 626
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 629
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    .line 630
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzcy:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 635
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 636
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    .line 637
    sget-object v2, Lcom/google/android/gms/measurement/internal/zznn;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzc()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 644
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zzj:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_0

    .line 640
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 641
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza()I

    move-result v3

    .line 642
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;I)V

    goto :goto_0

    .line 638
    :pswitch_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 645
    :goto_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zznn;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzd()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 652
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzj:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_2

    .line 648
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 649
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza()I

    move-result v1

    .line 650
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;I)V

    goto :goto_2

    .line 646
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_2

    .line 654
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 657
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 658
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zze()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 660
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 661
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza()I

    move-result v3

    .line 662
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;I)V

    goto :goto_1

    .line 663
    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zzj:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 664
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzf()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 665
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    .line 666
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza()I

    move-result v1

    .line 667
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;I)V

    goto :goto_2

    .line 668
    :cond_2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzj:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 669
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 672
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 674
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzni;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v3

    .line 675
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v1

    .line 676
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 677
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 678
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 681
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 682
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    const/4 v1, 0x0

    .line 684
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzab()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfu$zzn;

    const-string v4, "_npa"

    .line 685
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzn;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, v3

    :cond_5
    if-eqz v1, :cond_c

    .line 690
    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zza:Lcom/google/android/gms/measurement/internal/zzak;

    if-ne v2, v3, :cond_d

    .line 691
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqs;->zza()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzcx:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 693
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    .line 694
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_npa"

    .line 695
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v1, "tcf"

    .line 697
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 698
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzh:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto/16 :goto_4

    :cond_6
    const-string v1, "app"

    .line 700
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 701
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzf:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_4

    .line 703
    :cond_7
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzd:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_4

    .line 705
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 706
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_9

    .line 707
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzn;->zzc()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_b

    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_a

    .line 708
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzn;->zzc()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    goto :goto_3

    .line 710
    :cond_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzd:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_4

    .line 709
    :cond_b
    :goto_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzd:Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzf:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zziq$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_4

    .line 712
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)I

    move-result v1

    .line 714
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzn;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v2

    const-string v3, "_npa"

    .line 715
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v2

    .line 716
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v2

    int-to-long v3, v1

    .line 717
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzn$zza;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfu$zzn;

    .line 719
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzn;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 720
    :cond_d
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 721
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqs;->zza()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzcx:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 722
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzn(Ljava/lang/String;)Z

    move-result p1

    .line 723
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 724
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    const-string v3, "_tcf"

    .line 725
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 726
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    .line 727
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v0

    .line 728
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    .line 729
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zzf()Ljava/util/List;

    move-result-object v3

    .line 730
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    const-string v4, "_tcfd"

    .line 731
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 733
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/gms/measurement/internal/zzmy;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 735
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v3

    const-string v4, "_tcfd"

    .line 736
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object v3

    .line 737
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg$zza;

    move-result-object p1

    .line 738
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zze$zza;

    goto :goto_7

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 741
    :cond_f
    :goto_7
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    return-void

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1893
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1894
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1895
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzni;->zzh(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1897
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_1

    .line 1898
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1900
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzb(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x1

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eqz v4, :cond_3

    .line 1903
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    .line 1904
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1905
    invoke-static {v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 1906
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 1907
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v5, "_ev"

    .line 1908
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 1911
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 1914
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    .line 1915
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1916
    invoke-static {v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 1917
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1919
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1920
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1921
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v11, v2

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 1922
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v9, "_ev"

    .line 1923
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 1926
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    .line 1927
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "_sid"

    .line 1930
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1931
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zznt;->zzb:J

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zznt;->zze:Ljava/lang/String;

    .line 1932
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 1935
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    const-string v9, "_sno"

    invoke-virtual {v7, v1, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1936
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_8

    .line 1937
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    .line 1939
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v9

    .line 1940
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v9

    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 1941
    invoke-virtual {v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1943
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    const-string v9, "_s"

    invoke-virtual {v7, v1, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1945
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaz;->zzc:J

    .line 1946
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 1947
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v7, "Backfill the session number. Last used session number"

    .line 1948
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 1950
    new-instance v1, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v7, "_sno"

    .line 1951
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v3, v1

    move-object v4, v7

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1952
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1953
    :cond_b
    new-instance v1, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1954
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zznt;->zze:Ljava/lang/String;

    .line 1955
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zznt;->zzb:J

    move-object v4, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1956
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 1957
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Setting user property"

    .line 1958
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v5

    .line 1959
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Ljava/lang/String;

    .line 1960
    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1961
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    :try_start_0
    const-string v0, "_id"

    .line 1962
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1964
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v4, "_id"

    .line 1965
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1966
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1967
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v4, "_lair"

    .line 1968
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    :cond_c
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 1970
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zznv;)Z

    move-result v0

    const-string v3, "_sid"

    .line 1971
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1973
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object p1

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Ljava/lang/String;)J

    move-result-wide v3

    .line 1974
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1976
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 1977
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1978
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    .line 1979
    invoke-virtual {v3, p1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 1980
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V

    if-nez v0, :cond_e

    .line 1982
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 1983
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 1984
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    .line 1985
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 1986
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1987
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1988
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Lcom/google/android/gms/measurement/internal/zznx;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 1991
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1992
    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 473
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzq:Ljava/util/List;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzq:Ljava/util/List;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1016
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1017
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 1019
    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    .line 1020
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/16 v4, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    .line 1026
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 1027
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_3

    .line 1063
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(J)V

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p4

    .line 1065
    invoke-virtual {p4, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1067
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzi(Ljava/lang/String;)V

    .line 1069
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1070
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmi;->zzd:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 1075
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1076
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmi;->zzb:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 1077
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V

    goto/16 :goto_a

    :cond_8
    :goto_3
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    .line 1029
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_4

    :cond_9
    move-object v2, p3

    :goto_4
    if-eqz v2, :cond_a

    .line 1030
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1031
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object v2, p3

    :goto_5
    if-eqz p5, :cond_b

    const-string v3, "ETag"

    .line 1033
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_6

    :cond_b
    move-object p5, p3

    :goto_6
    if-eqz p5, :cond_c

    .line 1034
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_7

    :cond_c
    move-object p5, p3

    :goto_7
    if-eq p2, v5, :cond_e

    if-ne p2, v4, :cond_d

    goto :goto_8

    .line 1042
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p3

    invoke-virtual {p3, p1, p4, v2, p5}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_f

    .line 1043
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1044
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzu:Z

    .line 1045
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 1036
    :cond_e
    :goto_8
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object p5

    if-nez p5, :cond_f

    .line 1037
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3, p3}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_f

    .line 1038
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1039
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzu:Z

    .line 1040
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 1047
    :cond_f
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    .line 1048
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p3

    .line 1049
    invoke-virtual {p3, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    if-ne p2, v5, :cond_10

    .line 1051
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    .line 1052
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzv()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 1053
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 1054
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 1055
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 1056
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 1057
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1058
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1059
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzu()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzac()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1060
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzw()V

    goto :goto_a

    .line 1061
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V

    .line 1078
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1079
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1083
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzu:Z

    .line 1084
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    :catchall_1
    move-exception p1

    .line 1081
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1082
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1086
    :goto_b
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzu:Z

    .line 1087
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    .line 1088
    throw p1
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;)V
    .locals 6

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzg(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 539
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzt(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 540
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzbw:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzy()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "."

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v3, 0x0

    .line 545
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    goto :goto_0

    .line 548
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 549
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_id"

    .line 551
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 553
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 554
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 555
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 556
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 557
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 558
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 559
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzdf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 560
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 561
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzae:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzni$zzb;

    if-eqz v0, :cond_7

    .line 562
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzni$zzb;->zzb:J

    .line 563
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzau:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 564
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_8

    .line 565
    :cond_7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzni$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzni$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzni;Lcom/google/android/gms/measurement/internal/zznq;)V

    .line 566
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzae:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzni$zzb;->zza:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 568
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgz;->zzr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 569
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_a
    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzav;)V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1715
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1716
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1717
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x64

    .line 1719
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object v0

    .line 1720
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzad:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzav;)V

    .line 1722
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1724
    invoke-static {p2, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p2

    .line 1725
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()Lcom/google/android/gms/measurement/internal/zzit;

    move-result-object p2

    .line 1728
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1729
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1730
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1731
    :goto_0
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzit;->zzd:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzit;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 1732
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzcn:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    .line 1736
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string v0, "Generated _dcu event for"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1737
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1739
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 1740
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzx()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    .line 1741
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1742
    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    .line 1743
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzaw:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    const-string v0, "_r"

    const-wide/16 v1, 0x1

    .line 1745
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    .line 1748
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzx()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, p1

    .line 1749
    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1750
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 1751
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "_dcu realtime event count"

    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    .line 1752
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1753
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzah:Lcom/google/android/gms/measurement/internal/zznx;

    const-string v1, "_dcu"

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zznx;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1878
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1879
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1880
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkv;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1590
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1591
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 1592
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzag:Ljava/lang/String;

    .line 1593
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzaf:Lcom/google/android/gms/measurement/internal/zzkv;

    :cond_1
    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1509
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1510
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzni;->zzh(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1512
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_1

    .line 1513
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1515
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zzg(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "_npa"

    .line 1516
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1517
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 1518
    new-instance p1, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v3, "_npa"

    .line 1519
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 1520
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void

    .line 1523
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 1524
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Removing user property"

    .line 1525
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    .line 1526
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1527
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1528
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1529
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v0, "_id"

    .line 1530
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1531
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1532
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    .line 1533
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1535
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1536
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V

    .line 1538
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    .line 1539
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string v0, "User property removed"

    .line 1540
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v1

    .line 1541
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1542
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 1545
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1546
    throw p1
.end method

.method final zza(Z)V
    .locals 0

    .line 1089
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V

    return-void
.end method

.method final zza(ZILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1093
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    .line 1095
    :try_start_0
    new-array p4, p5, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 1096
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzz:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 1097
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzz:Ljava/util/List;

    .line 1098
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzcr:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/16 v2, 0xc8

    if-eq p2, v2, :cond_2

    const/16 v2, 0xcc

    if-ne p2, v2, :cond_d

    :cond_2
    if-nez p3, :cond_d

    .line 1100
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzcr:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    .line 1103
    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1104
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 1107
    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1108
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzmi;->zzd:Lcom/google/android/gms/measurement/internal/zzgp;

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 1109
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V

    .line 1110
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzcr:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    .line 1116
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzbf;->zzcr:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p2, "Purged empty bundles"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto :goto_2

    .line 1112
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 1113
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p3, "Successful upload. Got network response. code, size"

    .line 1114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1115
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1121
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1122
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1123
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    .line 1124
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4

    .line 1125
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v2, "queue"

    const-string v6, "rowid=?"

    .line 1126
    invoke-virtual {p4, v2, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    if-ne p4, v3, :cond_9

    goto :goto_3

    .line 1128
    :cond_9
    new-instance p4, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Deleted fewer rows from queue than expected"

    invoke-direct {p4, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p4

    .line 1131
    :try_start_5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p3

    const-string v0, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v0, p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    throw p4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p3

    .line 1134
    :try_start_6
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzaa:Ljava/util/List;

    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzaa:Ljava/util/List;

    .line 1135
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_3

    .line 1136
    :cond_a
    throw p3

    .line 1137
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1138
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1142
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzaa:Ljava/util/List;

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzu()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzac()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1144
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzw()V

    goto :goto_4

    :cond_c
    const-wide/16 p1, -0x1

    .line 1145
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzab:J

    .line 1146
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V

    .line 1147
    :goto_4
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1141
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception p1

    .line 1150
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 1154
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 1155
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p4, "Network upload failed. Will retry later. code, error"

    .line 1156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p4, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1158
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1159
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmi;->zzd:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_f

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_e

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    :cond_f
    :goto_5
    if-eqz v3, :cond_10

    .line 1163
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1164
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmi;->zzb:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 1165
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/util/List;)V

    .line 1166
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1167
    :goto_6
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzv:Z

    .line 1168
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 1170
    :goto_7
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzv:Z

    .line 1171
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    .line 1172
    throw p1

    :goto_8
    nop

    goto :goto_8
.end method

.method public final zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 312
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zziq;

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 319
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)V

    :cond_1
    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/String;
    .locals 4

    .line 383
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zznm;-><init>(Lcom/google/android/gms/measurement/internal/zzni;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 384
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 385
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 389
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 390
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzae;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1628
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1632
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1634
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1638
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1639
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1640
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzni;->zzh(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1642
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_1

    .line 1643
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1645
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Lcom/google/android/gms/measurement/internal/zzae;)V

    const/4 p1, 0x0

    .line 1646
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    .line 1647
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1650
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1651
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    .line 1652
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1653
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1654
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 1655
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 1656
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v4

    .line 1657
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    .line 1658
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1659
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    if-eqz v3, :cond_3

    .line 1660
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    .line 1661
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    .line 1662
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzh:J

    .line 1663
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    .line 1664
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbd;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 1665
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    .line 1666
    new-instance v2, Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zznt;->zzb:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 1667
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zznt;->zze:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    goto :goto_0

    .line 1668
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1669
    new-instance p1, Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 1670
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zznt;->zze:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 1671
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    const/4 p1, 0x1

    .line 1673
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    if-eqz v1, :cond_6

    .line 1674
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 1675
    new-instance v9, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1676
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zznt;->zzb:J

    .line 1677
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1678
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zznv;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1680
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 1681
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1682
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v4

    .line 1683
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 1684
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1685
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 1686
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1687
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1688
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v4

    .line 1689
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    .line 1690
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 1691
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbd;

    if-eqz p1, :cond_6

    .line 1692
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbd;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;J)V

    .line 1693
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1694
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzae;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1696
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 1697
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1698
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    .line 1699
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 1700
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1701
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1702
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object p1

    .line 1703
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1704
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1705
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    .line 1706
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznt;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 1707
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1708
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1709
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 1712
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1713
    throw p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzu;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzg:Lcom/google/android/gms/measurement/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzu;

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1176
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1178
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzh(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1180
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 1182
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 1183
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1184
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    .line 1186
    invoke-virtual {v6, v0, v5, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzj(Ljava/lang/String;)V

    .line 1188
    :cond_1
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_2

    .line 1189
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1191
    :cond_2
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzl:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_3

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 1195
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzg()Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzax;->zzm()V

    .line 1197
    iget v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzm:I

    const/4 v14, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v14, :cond_4

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v8

    .line 1200
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1201
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1203
    invoke-virtual {v8, v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    move v15, v0

    .line 1205
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1207
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v9, "_npa"

    .line 1208
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    .line 1209
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzg(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/Boolean;

    move-result-object v8

    const-wide/16 v12, 0x1

    if-eqz v0, :cond_5

    const-string v9, "auto"

    .line 1210
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Ljava/lang/String;

    .line 1211
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_5
    if-eqz v8, :cond_8

    .line 1213
    new-instance v10, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v9, "_npa"

    .line 1214
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    move-wide/from16 v16, v12

    goto :goto_1

    :cond_6
    move-wide/from16 v16, v3

    :goto_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v8, v10

    move-object v3, v10

    move-wide v10, v6

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 1215
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zznt;->zzc:Ljava/lang/Long;

    .line 1216
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1217
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    const-string v0, "_npa"

    .line 1219
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1221
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 1224
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    .line 1225
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v10

    .line 1226
    invoke-static {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 1228
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v8, "New GMP App Id passed in. Removing cached database data. appId"

    .line 1229
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1230
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v8

    .line 1232
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    .line 1233
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1234
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1236
    new-array v9, v14, [Ljava/lang/String;

    aput-object v8, v9, v5

    const-string v10, "events"

    const-string v11, "app_id=?"

    .line 1237
    invoke-virtual {v0, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v5

    const-string v11, "user_attributes"

    const-string v12, "app_id=?"

    .line 1238
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "conditional_properties"

    const-string v12, "app_id=?"

    .line 1239
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "apps"

    const-string v12, "app_id=?"

    .line 1240
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "raw_events"

    const-string v12, "app_id=?"

    .line 1241
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "raw_events_metadata"

    const-string v12, "app_id=?"

    .line 1242
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "event_filters"

    const-string v12, "app_id=?"

    .line 1243
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "property_filters"

    const-string v12, "app_id=?"

    .line 1244
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "audience_filter_values"

    const-string v12, "app_id=?"

    .line 1245
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "consent_settings"

    const-string v12, "app_id=?"

    .line 1246
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "default_event_params"

    const-string v12, "app_id=?"

    .line 1247
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    const-string v11, "trigger_uris"

    const-string v12, "app_id=?"

    .line 1248
    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v10, v0

    if-lez v10, :cond_a

    .line 1250
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v9, "Deleted application data. app, records"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1253
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 1254
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v9, "Error deleting application data. appId, error"

    .line 1255
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v9, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_3
    const/4 v0, 0x0

    :cond_b
    if-eqz v0, :cond_e

    .line 1259
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v8

    const-wide/32 v10, -0x80000000

    cmp-long v4, v8, v10

    if-eqz v4, :cond_c

    .line 1260
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v8

    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    cmp-long v4, v8, v12

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    .line 1261
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v8

    .line 1263
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-nez v0, :cond_d

    if-eqz v8, :cond_d

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    .line 1264
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    or-int/2addr v0, v4

    if-eqz v0, :cond_e

    .line 1266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 1267
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v9, "_au"

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1269
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1270
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v15, :cond_f

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v8, "_f"

    .line 1275
    invoke-virtual {v0, v4, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    goto :goto_6

    :cond_f
    if-ne v15, v14, :cond_10

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v8, "_v"

    .line 1279
    invoke-virtual {v0, v4, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_25

    const-wide/32 v8, 0x36ee80

    .line 1281
    div-long v10, v6, v8

    const/4 v0, 0x0

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    mul-long v10, v10, v8

    if-nez v15, :cond_23

    .line 1283
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v9, "_fot"

    .line 1284
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v15, "auto"

    move-object v8, v0

    move-wide v10, v6

    move-object v12, v4

    move-object v13, v15

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1290
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzl:Lcom/google/android/gms/measurement/internal/zzgt;

    .line 1291
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzgt;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1293
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_11

    goto/16 :goto_8

    .line 1299
    :cond_11
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1300
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1301
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgt;->zza()Z

    move-result v8

    if-nez v8, :cond_12

    .line 1302
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzn()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v4, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1304
    :cond_12
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzgw;

    invoke-direct {v8, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgw;-><init>(Lcom/google/android/gms/measurement/internal/zzgt;Ljava/lang/String;)V

    .line 1305
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1306
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.vending"

    const-string v11, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1309
    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-nez v9, :cond_13

    .line 1311
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1312
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 1313
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzw()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v4, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 1314
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1316
    :cond_13
    invoke-virtual {v9, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 1317
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_16

    .line 1318
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1319
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_18

    .line 1320
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1321
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_15

    const-string v9, "com.android.vending"

    .line 1323
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1324
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgt;->zza()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1325
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1326
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1327
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v10

    .line 1328
    invoke-virtual {v0, v10, v9, v8, v14}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1329
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1330
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v8

    .line 1331
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    const-string v9, "Install Referrer Service is"

    if-eqz v0, :cond_14

    const-string v0, "available"

    goto :goto_7

    :cond_14
    const-string v0, "not available"

    .line 1332
    :goto_7
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    .line 1335
    :try_start_4
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1336
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v4

    .line 1337
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    const-string v8, "Exception occurred while binding to Install Referrer Service"

    .line 1338
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-virtual {v4, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 1341
    :cond_15
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1342
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v4, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 1344
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto :goto_9

    .line 1346
    :cond_16
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1347
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzn()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v4, "Play Service for fetching Install Referrer is unavailable on device"

    .line 1349
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    goto :goto_9

    .line 1294
    :cond_17
    :goto_8
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgt;->zza:Lcom/google/android/gms/measurement/internal/zzhm;

    .line 1295
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzw()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v4, "Install Referrer Reporter was called with invalid app package name"

    .line 1297
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 1352
    :cond_18
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1354
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    const-wide/16 v12, 0x1

    .line 1355
    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    .line 1356
    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    const-wide/16 v8, 0x0

    .line 1357
    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    .line 1358
    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    .line 1359
    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    .line 1360
    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_et"

    .line 1361
    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1362
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzo:Z

    if-eqz v0, :cond_19

    const-string v0, "_dac"

    .line 1363
    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1364
    :cond_19
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 1366
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1367
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1368
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    const-string v8, "first_open_count"

    .line 1369
    invoke-virtual {v0, v15, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 1372
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 1376
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    .line 1377
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1378
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide v8, v10

    :goto_a
    const-wide/16 v10, 0x0

    goto/16 :goto_13

    .line 1381
    :cond_1a
    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1382
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v15, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :catch_2
    move-exception v0

    .line 1385
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v8

    .line 1386
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    const-string v9, "Package info is null, first open report might be inaccurate. appId"

    .line 1387
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1388
    invoke-virtual {v8, v9, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1f

    .line 1390
    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v16, 0x0

    cmp-long v3, v8, v16

    if-eqz v3, :cond_1f

    .line 1392
    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v18, v15

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v8, v14

    if-eqz v0, :cond_1d

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzbm:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/16 v8, 0x0

    cmp-long v0, v10, v8

    if-nez v0, :cond_1c

    const-string v0, "_uwa"

    .line 1395
    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    :cond_1b
    const-string v0, "_uwa"

    .line 1396
    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1c
    :goto_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_1d
    const/4 v0, 0x1

    .line 1398
    :goto_d
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v9, "_fi"

    if-eqz v0, :cond_1e

    move-wide v14, v12

    goto :goto_e

    :cond_1e
    const-wide/16 v14, 0x0

    .line 1399
    :goto_e
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v14, "auto"

    move-object v8, v3

    move-wide/from16 v19, v10

    move-wide v10, v6

    move-object v12, v0

    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_f

    :cond_1f
    move-wide/from16 v19, v10

    move-object/from16 v18, v15

    .line 1403
    :goto_f
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1404
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v3, v18

    :try_start_8
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v3, v18

    .line 1407
    :goto_10
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v5

    .line 1408
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    .line 1409
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1410
    invoke-virtual {v5, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_21

    .line 1412
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_20

    const-string v3, "_sys"

    const-wide/16 v13, 0x1

    .line 1413
    invoke-virtual {v4, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_12

    :cond_20
    const-wide/16 v13, 0x1

    .line 1414
    :goto_12
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_21

    const-string v0, "_sysu"

    .line 1415
    invoke-virtual {v4, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_21
    move-wide/from16 v8, v19

    goto/16 :goto_a

    :goto_13
    cmp-long v0, v8, v10

    if-ltz v0, :cond_22

    const-string v0, "_pfo"

    .line 1417
    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1418
    :cond_22
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v9, "_f"

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v10, v4}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v0

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1419
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto/16 :goto_14

    :cond_23
    move-wide v13, v12

    const/4 v3, 0x1

    if-ne v15, v3, :cond_26

    .line 1421
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v9, "_fvt"

    .line 1422
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v3, "auto"

    move-object v8, v0

    move-wide v10, v6

    move-wide v4, v13

    move-object v13, v3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznt;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_c"

    .line 1429
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_r"

    .line 1430
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_et"

    .line 1431
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1432
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzo:Z

    if-eqz v3, :cond_24

    const-string v3, "_dac"

    .line 1433
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1434
    :cond_24
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v9, "_v"

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1435
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_14

    .line 1436
    :cond_25
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzi:Z

    if-eqz v0, :cond_26

    .line 1438
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1439
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v9, "_cd"

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1440
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Lcom/google/android/gms/measurement/internal/zzbd;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1441
    :cond_26
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1445
    throw v0

    :goto_15
    nop

    goto :goto_15
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1547
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzz:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzaa:Ljava/util/List;

    .line 1549
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzaa:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzz:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1550
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1551
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1552
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1553
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    .line 1554
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    .line 1555
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "apps"

    const-string v6, "app_id=?"

    .line 1556
    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    const-string v4, "events"

    const-string v6, "app_id=?"

    .line 1557
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "events_snapshot"

    const-string v6, "app_id=?"

    .line 1558
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "user_attributes"

    const-string v6, "app_id=?"

    .line 1559
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "conditional_properties"

    const-string v6, "app_id=?"

    .line 1560
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events"

    const-string v6, "app_id=?"

    .line 1561
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events_metadata"

    const-string v6, "app_id=?"

    .line 1562
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "queue"

    const-string v6, "app_id=?"

    .line 1563
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "audience_filter_values"

    const-string v6, "app_id=?"

    .line 1564
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "main_event_params"

    const-string v6, "app_id=?"

    .line 1565
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "default_event_params"

    const-string v6, "app_id=?"

    .line 1566
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "trigger_uris"

    const-string v6, "app_id=?"

    .line 1567
    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    if-lez v5, :cond_1

    .line 1569
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1572
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 1573
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v3, "Error resetting analytics data. appId, error"

    .line 1574
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1575
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-eqz v0, :cond_2

    .line 1576
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzc(Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_2
    return-void
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzag;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1579
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1580
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1581
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1582
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzz:Ljava/lang/String;

    .line 1583
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    .line 1584
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 1585
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Setting DMA consent. package, consent"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1586
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1587
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzav;)V

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzd:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzal;

    return-object v0
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1596
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1597
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 1598
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1599
    iget v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzy:I

    .line 1600
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 1601
    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    .line 1602
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    .line 1603
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 1604
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Setting storage consent, package, consent"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1605
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1606
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 1607
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzdf:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1609
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Lcom/google/android/gms/measurement/internal/zziq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zzd(Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_1
    return-void
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzfy;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzk()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzgg;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzc:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgg;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzgz;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzb:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgz;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzfz;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    return-object v0
.end method

.method final zzk()Lcom/google/android/gms/measurement/internal/zzhm;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzhj;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzkt;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzi:Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzmi;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzng;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzk:Lcom/google/android/gms/measurement/internal/zzng;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zznr;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzh:Lcom/google/android/gms/measurement/internal/zznr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Lcom/google/android/gms/measurement/internal/zznd;)Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznr;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzny;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zzt()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    return-object v0
.end method

.method final zzr()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 479
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    .line 480
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzo:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzo:Z

    .line 482
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzy:Ljava/nio/channels/FileChannel;

    .line 485
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzab()I

    move-result v1

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    if-le v0, v1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 495
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    .line 499
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzy:Ljava/nio/channels/FileChannel;

    .line 500
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzni;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 502
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    .line 503
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 508
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final zzs()V
    .locals 2

    .line 513
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzn:Z

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzt()V
    .locals 1

    .line 1012
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzt:I

    return-void
.end method

.method final zzu()V
    .locals 1

    .line 1446
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzs:I

    return-void
.end method

.method protected final zzv()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1618
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1619
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzv()V

    .line 1621
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1622
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 1625
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    .line 1626
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V

    return-void
.end method

.method final zzw()V
    .locals 26
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v7, p0

    .line 1994
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 1995
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzs()V

    const/4 v0, 0x1

    .line 1996
    iput-boolean v0, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    const/4 v8, 0x0

    .line 1997
    :try_start_0
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzr()Lcom/google/android/gms/measurement/internal/zzld;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzld;->zzab()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzu()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    .line 2001
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2002
    iput-boolean v8, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2003
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 2005
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2007
    iput-boolean v8, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2008
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 2010
    :cond_1
    :try_start_2
    iget-wide v1, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 2011
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2012
    iput-boolean v8, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2013
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 2017
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 2018
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzz:Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2020
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2021
    iput-boolean v8, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2022
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 2024
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzu()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2025
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)V

    .line 2026
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzab()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2027
    iput-boolean v8, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2028
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 2030
    :cond_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 2031
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbf;->zzas:Lcom/google/android/gms/measurement/internal/zzfq;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v5

    .line 2032
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzh()J

    move-result-wide v10

    const/4 v6, 0x0

    sub-long v10, v1, v10

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    .line 2034
    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2036
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2039
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 2040
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzr:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2041
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbf;->zzce:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v10, v6, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2042
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v10

    const-string v11, "Notifying app that trigger URIs are available. App ID"

    invoke-virtual {v10, v11, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2043
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 2044
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    invoke-virtual {v10, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2047
    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzm:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhm;->zza()Landroid/content/Context;

    move-result-object v6

    .line 2048
    invoke-virtual {v6, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 2050
    :cond_8
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzr:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 2052
    :cond_9
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2053
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgp;->zza()J

    move-result-wide v5

    cmp-long v10, v5, v3

    if-eqz v10, :cond_a

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v3

    .line 2056
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfz;->zzc()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    const/4 v10, 0x0

    sub-long v5, v1, v5

    .line 2057
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2058
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2059
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->f_()Ljava/lang/String;

    move-result-object v6

    .line 2060
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_29

    .line 2061
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzab:J

    cmp-long v3, v10, v4

    if-nez v3, :cond_b

    .line 2062
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->b_()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzab:J

    .line 2063
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    .line 2064
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzg:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v3

    .line 2066
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    .line 2067
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbf;->zzh:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2070
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 2071
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 2072
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2074
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2075
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2076
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzam()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 2077
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzam()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_d
    move-object v4, v9

    :goto_3
    if-eqz v4, :cond_f

    const/4 v5, 0x0

    .line 2081
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_f

    .line 2082
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2083
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzam()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    .line 2084
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzam()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 2085
    invoke-interface {v3, v8, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2088
    :cond_f
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu$zzi;->zzb()Lcom/google/android/gms/internal/measurement/zzfu$zzi$zzb;

    move-result-object v4

    .line 2089
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 2090
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2092
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzk(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2093
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    goto :goto_6

    :cond_10
    const/4 v11, 0x0

    .line 2094
    :goto_6
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zziq;->zzi()Z

    move-result v12

    .line 2096
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zziq;->zzj()Z

    move-result v13

    .line 2097
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 2098
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbf;->zzbs:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v14, v6, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, 0x1

    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    .line 2100
    :goto_7
    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzk:Lcom/google/android/gms/measurement/internal/zzng;

    .line 2101
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    .line 2102
    iget-object v9, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2103
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 2104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbf;->zzbt:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzny;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v9, :cond_12

    .line 2107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 2108
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzi$zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzi$zzb;

    :cond_12
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v5, :cond_25

    .line 2110
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    .line 2111
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjv;->zzca()Lcom/google/android/gms/internal/measurement/zzjv$zza;

    move-result-object v8

    .line 2112
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzjv$zza;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2113
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-object/from16 v18, v4

    const-wide/32 v3, 0x16760

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v3

    .line 2116
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    move-result-object v3

    const/4 v4, 0x0

    .line 2118
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    if-nez v11, :cond_13

    .line 2120
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_13
    if-nez v12, :cond_14

    .line 2122
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2123
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_14
    if-nez v13, :cond_15

    .line 2125
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2126
    :cond_15
    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;)V

    if-nez v14, :cond_16

    .line 2128
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2129
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzdg:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez v13, :cond_17

    .line 2132
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2133
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzcr:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2136
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzz()Ljava/lang/String;

    move-result-object v3

    .line 2138
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_9

    :cond_18
    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move-object/from16 v25, v15

    goto/16 :goto_b

    .line 2139
    :cond_19
    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2141
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v20, v11

    move/from16 v21, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    .line 2144
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 2145
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v13

    move-object/from16 v13, v22

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfu$zze;

    move/from16 v24, v14

    const-string v14, "_fx"

    move-object/from16 v25, v15

    .line 2146
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 2148
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move/from16 v13, v23

    move/from16 v14, v24

    move-object/from16 v15, v25

    const/16 v16, 0x1

    const/16 v19, 0x1

    goto :goto_a

    :cond_1a
    const-string v14, "_f"

    .line 2150
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zze;->zzg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 2152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbf;->zzdc:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 2154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v14, "_pfo"

    .line 2155
    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v14

    if-eqz v14, :cond_1b

    .line 2157
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2159
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    const-string v14, "_uwa"

    .line 2160
    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu$zzg;

    move-result-object v13

    if-eqz v13, :cond_1c

    .line 2162
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu$zzg;->zzd()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :cond_1c
    const/16 v19, 0x1

    :cond_1d
    move/from16 v13, v23

    move/from16 v14, v24

    move-object/from16 v15, v25

    goto :goto_a

    :cond_1e
    move/from16 v23, v13

    move/from16 v24, v14

    move-object/from16 v25, v15

    if-eqz v16, :cond_1f

    .line 2165
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2166
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_1f
    if-eqz v19, :cond_20

    .line 2169
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2170
    invoke-direct {v7, v3, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2171
    :cond_20
    :goto_b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzc()I

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_c

    :cond_21
    move-object/from16 v3, v18

    goto :goto_d

    :cond_22
    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move-object/from16 v25, v15

    .line 2172
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzbg:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2173
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbx()[B

    move-result-object v3

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zznr;->zza([B)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    .line 2175
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzbt:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzq()Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzny;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    if-nez v9, :cond_24

    .line 2178
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;

    :cond_24
    move-object/from16 v3, v18

    .line 2179
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzfu$zzi$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzj$zza;)Lcom/google/android/gms/internal/measurement/zzfu$zzi$zzb;

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move-object v4, v3

    move-object/from16 v3, v17

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v23

    move/from16 v14, v24

    move-object/from16 v15, v25

    goto/16 :goto_8

    :cond_25
    move-object v3, v4

    move-object/from16 v25, v15

    .line 2181
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbf;->zzcr:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfq;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2183
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu$zzi$zzb;->zza()I

    move-result v0

    if-nez v0, :cond_26

    .line 2184
    invoke-direct {v7, v10}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/util/List;)V

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 2185
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzni;->zza(ZILjava/lang/Throwable;[BLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v1, 0x0

    .line 2186
    iput-boolean v1, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2187
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    .line 2190
    :cond_26
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfu$zzi;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zznr;->zza(Lcom/google/android/gms/internal/measurement/zzfu$zzi;)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_27
    const/4 v9, 0x0

    .line 2192
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzp()Lcom/google/android/gms/measurement/internal/zznr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjv$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjv;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfu$zzi;

    .line 2193
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbx()[B

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2195
    :try_start_7
    invoke-direct {v7, v10}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/util/List;)V

    .line 2197
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzj:Lcom/google/android/gms/measurement/internal/zzmi;

    .line 2198
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmi;->zzd:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(J)V

    const-string v0, "?"
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lez v5, :cond_28

    const/4 v1, 0x0

    .line 2201
    :try_start_8
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzfu$zzi$zzb;->zza(I)Lcom/google/android/gms/internal/measurement/zzfu$zzj;

    move-result-object v0
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu$zzj;->zzy()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    .line 2202
    :cond_28
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 2203
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzp()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Uploading data. app, uncompressed size, data"

    array-length v3, v14

    .line 2204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2205
    iput-boolean v0, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzv:Z

    .line 2206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v11

    new-instance v13, Ljava/net/URL;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v0, v25

    :try_start_a
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/zznf;

    .line 2207
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznf;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/zznf;

    .line 2208
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznf;->zzb()Ljava/util/Map;

    move-result-object v15

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznk;

    invoke-direct {v1, v7, v6}, Lcom/google/android/gms/measurement/internal/zznk;-><init>(Lcom/google/android/gms/measurement/internal/zzni;Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzim;->zzt()V

    .line 2211
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zznd;->zzak()V

    .line 2212
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzim;->zzl()Lcom/google/android/gms/measurement/internal/zzhj;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgk;

    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/measurement/internal/zzgg;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgf;)V

    .line 2216
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_10

    :catch_0
    move-object/from16 v0, v25

    .line 2219
    :catch_1
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzj()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    .line 2220
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zzg()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    .line 2221
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznf;

    .line 2222
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznf;->zza()Ljava/lang/String;

    move-result-object v0

    .line 2223
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    .line 2225
    :cond_29
    iput-wide v4, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzab:J

    .line 2227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzh()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(J)Ljava/lang/String;

    move-result-object v0

    .line 2229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2230
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2232
    invoke-direct {v7, v0}, Lcom/google/android/gms/measurement/internal/zzni;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_2a
    :goto_10
    const/4 v1, 0x0

    .line 2233
    iput-boolean v1, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2234
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    return-void

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 2236
    :goto_11
    iput-boolean v1, v7, Lcom/google/android/gms/measurement/internal/zzni;->zzw:Z

    .line 2237
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzni;->zzaa()V

    .line 2238
    throw v0

    :goto_12
    nop

    goto :goto_12
.end method
