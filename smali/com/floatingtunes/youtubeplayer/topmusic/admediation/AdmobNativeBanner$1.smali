.class Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobNativeBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 0

    return-void
.end method
