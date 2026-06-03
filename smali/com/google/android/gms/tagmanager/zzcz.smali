.class final Lcom/google/android/gms/tagmanager/zzcz;
.super Landroid/util/LruCache;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzda;ILcom/google/android/gms/tagmanager/zzq;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcz;->zza:Lcom/google/android/gms/tagmanager/zzq;

    const/high16 p1, 0x100000

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcz;->zza:Lcom/google/android/gms/tagmanager/zzq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzq;->zza(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
