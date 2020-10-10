.class Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;
.super Landroid/util/LruCache;
.source "LibraryPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdaperPositionLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;I)V
    .locals 0

    .line 938
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;->this$0:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    .line 939
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method private _k(Lch/blinkenlights/android/vanilla/LibraryAdapter;)Ljava/lang/String;
    .locals 5

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getMediaType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 956
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Limiter;->names:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public popPosition(Lch/blinkenlights/android/vanilla/LibraryAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 945
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;->_k(Lch/blinkenlights/android/vanilla/LibraryAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public storePosition(Lch/blinkenlights/android/vanilla/LibraryAdapter;Ljava/lang/Integer;)V
    .locals 0

    .line 942
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;->_k(Lch/blinkenlights/android/vanilla/LibraryAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
