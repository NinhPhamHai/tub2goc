.class final synthetic Lcom/google/android/gms/internal/ads/zzcyh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxo;


# instance fields
.field private final zzdvv:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcyh;->zzdvv:I

    return-void
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcyh;->zzdvv:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasl;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzasl;->onRewardedAdFailedToShow(I)V

    return-void
.end method
