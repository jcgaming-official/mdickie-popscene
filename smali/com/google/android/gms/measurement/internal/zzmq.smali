.class final Lcom/google/android/gms/measurement/internal/zzmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzmn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmn;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzmq;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmq;->zzb:Lcom/google/android/gms/measurement/internal/zzmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmq;->zzb:Lcom/google/android/gms/measurement/internal/zzmn;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzmq;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmn;->zzb(Lcom/google/android/gms/measurement/internal/zzmn;J)V

    return-void
.end method
