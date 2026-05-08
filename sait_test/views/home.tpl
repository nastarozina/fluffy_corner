% rebase('layout.tpl', title='Партнёрские компании')
<link rel="stylesheet" type="text/css" href="/static/content/style_partners.css"/>
<div class="partners-page">
    
    <!-- Герой-секция -->
    <section class="hero-partners">
        <div class="hero-content animate-slide-in">
            <h1>Наши партнёры</h1>
            <p class="hero-subtitle">Вместе мы помогаем животным</p>
            <div class="hero-buttons">
                <a href="#add-partner" class="button-primary pulse">Стать партнёром</a>
            </div>
        </div>
    </section>
    
    <!-- Список партнёров -->
    <section class="partners-list">
        <h2 class="animate-title">С нами сотрудничают</h2>
        
        % if partners:
            <div class="partners-grid">
                % for partner in partners:
                    <div class="partner-card animate-card">
                        <div class="partner-icon">🤝</div>
                        <div class="partner-info">
                            <h3>{{partner.get('name', '')}}</h3>
                            <p class="phone">📞 {{partner.get('phone', '')}}</p>
                            <p class="description">{{partner.get('description', '')}}</p>
                            <p class="date">📅 С {{partner.get('date', '')}}</p>
                        </div>
                    </div>
                % end
            </div>
        % else:
            <div class="no-partners">
                <p>Пока нет партнёров. Станьте первым!</p>
            </div>
        % end
    </section>

    <!-- Форма добавления партнёра -->
    <section id="add-partner" class="add-partner">
        <h2 class="animate-title">Присоединиться к нам</h2>
        <div class="form-box animate-scale">
            <form action="/add_partner" method="post">
                <div class="form-group">
                    <label>Наименование компании *</label>
                    <input type="text" name="name" value="{{form_data.get('name', '')}}" placeholder="ООО 'Добрые сердца'">
                    % if errors.get('name'):
                        <div class="error">{{errors['name']}}</div>
                    % end
                </div>

                <div class="form-group">
                    <label>Телефон *</label>
                    <input type="tel" name="phone" value="{{form_data.get('phone', '')}}" placeholder="+7(123)456-78-90">
                    % if errors.get('phone'):
                        <div class="error">{{errors['phone']}}</div>
                    % end
                </div>

                <div class="form-group">
                    <label>Описание *</label>
                    <textarea name="description" rows="4" placeholder="Расскажите о вашей компании...">{{form_data.get('description', '')}}</textarea>
                    % if errors.get('description'):
                        <div class="error">{{errors['description']}}</div>
                    % end
                </div>

                <div class="form-group">
                    <label>Дата начала сотрудничества *</label>
                    <input type="date" name="date" value="{{form_data.get('date', '')}}">
                    % if errors.get('date'):
                        <div class="error">{{errors['date']}}</div>
                    % end
                </div>

                <div class="form-buttons">
                    <button type="submit" class="button-primary">Добавить</button>
                    <button type="reset" class="button-secondary">Очистить</button>
                </div>
            </form>
        </div>
    </section>
    
</div>

<script>
// Плавная прокрутка к форме при ошибках
if ({{'true' if errors else 'false'}}) {
    document.getElementById('add-partner').scrollIntoView({ behavior: 'smooth' });
}
</script>