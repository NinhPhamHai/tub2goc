.class Lch/blinkenlights/android/vanilla/PlaylistObserver$2;
.super Landroid/os/FileObserver;
.source "PlaylistObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PlaylistObserver;->getFileObserver(Ljava/io/File;)Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;I)V
    .locals 0

    .line 622
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-static {v0, p2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$300(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$000(Lch/blinkenlights/android/vanilla/PlaylistObserver;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    and-int/lit16 v0, p1, 0x240

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileObserver::onEvent DELETE of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " triggers FULL_SYNC_SCAN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$100(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$200(Lch/blinkenlights/android/vanilla/PlaylistObserver;ILjava/lang/Object;)V

    :cond_3
    and-int/lit16 p1, p1, 0x88

    if-eqz p1, :cond_4

    .line 648
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileObserver::onEvent WRITE of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " triggers IMPORT_M3U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$100(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;->this$0:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    const/4 v0, 0x3

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$400(Lch/blinkenlights/android/vanilla/PlaylistObserver;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->access$200(Lch/blinkenlights/android/vanilla/PlaylistObserver;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method
