.class public final enum Lcom/google/android/gms/measurement/internal/zzis;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzis;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzis;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzis;

.field private static final synthetic zzc:[Lcom/google/android/gms/measurement/internal/zzis;


# instance fields
.field private final zzd:[Lcom/google/android/gms/measurement/internal/zziq$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzis;

    const-string v1, "STORAGE"

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zziq$zza;->zza:Lcom/google/android/gms/measurement/internal/zziq$zza;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v5, v3}, Lcom/google/android/gms/measurement/internal/zzis;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zziq$zza;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzis;

    const-string v1, "DMA"

    new-array v3, v6, [Lcom/google/android/gms/measurement/internal/zziq$zza;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzc:Lcom/google/android/gms/measurement/internal/zziq$zza;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v6, v3}, Lcom/google/android/gms/measurement/internal/zzis;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zziq$zza;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzis;->zzb:Lcom/google/android/gms/measurement/internal/zzis;

    .line 3
    new-array v0, v2, [Lcom/google/android/gms/measurement/internal/zzis;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis;->zzb:Lcom/google/android/gms/measurement/internal/zzis;

    aput-object v1, v0, v6

    .line 4
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:[Lcom/google/android/gms/measurement/internal/zzis;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zziq$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/measurement/internal/zziq$zza;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzd:[Lcom/google/android/gms/measurement/internal/zziq$zza;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzis;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:[Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzis;

    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzis;)[Lcom/google/android/gms/measurement/internal/zziq$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzd:[Lcom/google/android/gms/measurement/internal/zziq$zza;

    return-object p0
.end method


# virtual methods
.method public final zza()[Lcom/google/android/gms/measurement/internal/zziq$zza;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzd:[Lcom/google/android/gms/measurement/internal/zziq$zza;

    return-object v0
.end method
