.class final Lcom/google/android/gms/tagmanager/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/List;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/tagmanager/zzbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbd;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzay;->zzc:Lcom/google/android/gms/tagmanager/zzbd;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzay;->zza:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzay;->zzb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzay;->zzc:Lcom/google/android/gms/tagmanager/zzbd;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzay;->zza:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzay;->zzb:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzbd;->zzh(Lcom/google/android/gms/tagmanager/zzbd;Ljava/util/List;J)V

    return-void
.end method
