.class Lch/blinkenlights/android/vanilla/PlaylistObserver$1;
.super Lch/blinkenlights/android/medialibrary/LibraryObserver;
.source "PlaylistObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/PlaylistObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaylistObserver;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-direct {p0}, Lch/blinkenlights/android/medialibrary/LibraryObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V
    .locals 2

    .line 591
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    if-ne p1, v0, :cond_4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$000(Lch/blinkenlights/android/vanilla/PlaylistObserver;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-nez p4, :cond_2

    const/4 p1, 0x2

    :cond_2
    const-wide/16 v0, -0x2

    cmp-long p4, p2, v0

    if-nez p4, :cond_3

    const/4 p1, 0x4

    .line 607
    :cond_3
    iget-object p4, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibraryObserver::onChange id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$100(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;)V

    .line 608
    iget-object p4, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$200(Lch/blinkenlights/android/vanilla/PlaylistObserver;ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method
