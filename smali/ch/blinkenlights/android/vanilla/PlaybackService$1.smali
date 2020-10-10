.class Lch/blinkenlights/android/vanilla/PlaybackService$1;
.super Lch/blinkenlights/android/medialibrary/LibraryObserver;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaybackService;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaybackService;)V
    .locals 0

    .line 1974
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService$1;->this$0:Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-direct {p0}, Lch/blinkenlights/android/medialibrary/LibraryObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V
    .locals 0

    .line 1978
    invoke-static {}, Lch/blinkenlights/android/vanilla/MediaUtils;->onMediaChange()V

    .line 1979
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService$1;->this$0:Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->onMediaChange()V

    return-void
.end method
