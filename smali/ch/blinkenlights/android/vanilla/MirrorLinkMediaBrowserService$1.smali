.class Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$1;
.super Ljava/lang/Object;
.source "MirrorLinkMediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$1;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 177
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$1;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    return-void
.end method
