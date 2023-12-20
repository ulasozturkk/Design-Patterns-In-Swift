#  Differences between factory and builder patterns

## Nesne Oluşturma Süreci:
Factory Pattern: Factory pattern, bir sınıfın nesne oluşturma sürecini gizlemeyi amaçlar. Sınıfın bir fabrikası, istemciden gelen taleplere göre belirli bir alt sınıfı veya nesneyi oluşturur ve döndürür.
Builder Pattern: Builder pattern, karmaşık nesnelerin adım adım oluşturulmasını sağlar. İstemci, bir yönetici (director) aracılığıyla belirli adımları sırasıyla çağırarak nesneyi oluşturur.
## Oluşturulan Nesnenin Esnekliği:
Factory Pattern: Factory pattern genellikle tek bir adımda bir nesne oluşturur ve istemciye döndürür. Oluşturulan nesnenin özellikleri genellikle sınıfın yapılandırıcı metodları aracılığıyla belirlenir.
Builder Pattern: Builder pattern ise nesnenin oluşturulma sürecini adım adım yönetir. Bu desen, oluşturulan nesnenin farklı temsil biçimlerine (varyantlara) sahip olmasını sağlar ve istemcinin hangi adımları çağıracağını seçmesine izin verir.
## Kullanım Senaryoları:
Factory Pattern: Factory pattern genellikle tek bir adımda nesne oluşturma ihtiyacı olduğu durumlarda kullanılır. Nesnenin oluşturulma süreci istemci için karmaşık değildir.
Builder Pattern: Builder pattern, nesnenin oluşturulma sürecinin karmaşık ve adım adım olduğu durumlarda kullanılır. Nesnenin çeşitli özellikleri farklı sıralamalarda belirlenebilir.
## Örnek Kullanım:
Factory Pattern Örneği: Bir oyun uygulamasında farklı düşman tiplerini oluşturmak için bir factory pattern kullanılabilir. İstemci, belirli bir düşman tipini talep eder, fabrika ise uygun düşman nesnesini oluşturur ve döndürür.
Builder Pattern Örneği: Önceki örnekte olduğu gibi bir yemek oluşturma senaryosu. İstemci, bir yönetici (waiter) aracılığıyla belirli adımları çağırarak karmaşık bir yemek nesnesi oluşturur.
Sonuç olarak, Factory pattern genellikle basit ve tek adımlı nesne oluşturma senaryolarında tercih edilirken, Builder pattern karmaşık nesnelerin adım adım oluşturulmasını gerektiren durumlar için daha uygun olabilir.
