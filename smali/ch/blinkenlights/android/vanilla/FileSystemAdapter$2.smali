.class Lch/blinkenlights/android/vanilla/FileSystemAdapter$2;
.super Ljava/lang/Object;
.source "FileSystemAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/FileSystemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/FileSystemAdapter;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$2;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 130
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v0, :cond_6

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$2;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortModeIndex()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lch/blinkenlights/android/vanilla/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sort mode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    .line 152
    :goto_1
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$2;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/SortableAdapter;->isSortDescending()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :goto_2
    mul-int v2, v2, p1

    return v2

    :cond_6
    if-eqz v1, :cond_7

    return v3

    :cond_7
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/android/vanilla/FileSystemAdapter$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
