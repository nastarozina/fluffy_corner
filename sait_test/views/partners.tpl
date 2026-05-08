% rebase('layout.tpl', title='Партнёрские компании')
<link rel="stylesheet" type="text/css" href="/static/content/style_partners.css"/>

<div class="partners-page">
    
    <section class="hero-partners">
        <div class="hero-content">
            <h1>Наши партнёры</h1>
            <p class="hero-subtitle">Компании, которые помогают нам делать добро</p>
        </div>
    </section>

    <section class="partners-list-section">
        <h2>С нами сотрудничают</h2>
        
        % if partners:
            <div class="partners-grid">
                % for partner in partners:
                    <div class="partner-card">
                        <div class="partner-icon">🤝</div>
                        <div class="partner-info">
                            <h3 class="partner-name">{{partner.get('name', '')}}</h3>
                            <p class="partner-phone">📞 {{partner.get('phone', '')}}</p>
                            <p class="partner-description">{{partner.get('description', '')}}</p>
                            <p class="partner-date">📅 С нами с {{partner.get('date', '')}}</p>
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

    <section class="add-partner-section">
        <h2>Стать партнёром</h2>
        <div class="form-container">
            <form action="/add_partner" method="post" class="partner-form">
                <div class="form-group">
                    <label for="name">Наименование компании <span class="required">*</span></label>
                    <input type="text" 
                           id="name" 
                           name="name" 
                           value="{{form_data.get('name', '')}}"
                           placeholder="ООО 'Добрые сердца'"
                           class="form-control {{ 'error' if errors.get('name') else '' }}">
                    % if errors.get('name'):
                        <div class="error-message">{{errors['name']}}</div>
                    % end
                </div>

                <div class="form-group">
                    <label for="phone">Телефон <span class="required">*</span></label>
                    <input type="tel" 
                           id="phone" 
                           name="phone" 
                           value="{{form_data.get('phone', '')}}"
                           placeholder="+7(123)456-78-90"
                           class="form-control {{ 'error' if errors.get('phone') else '' }}">
                    % if errors.get('phone'):
                        <div class="error-message">{{errors['phone']}}</div>
                    % end
                </div>

                <div class="form-group">
                    <label for="description">Описание <span class="required">*</span></label>
                    <textarea id="description" 
                              name="description" 
                              rows="4"
                              placeholder="Расскажите о вашей компании..."
                              class="form-control {{ 'error' if errors.get('description') else '' }}">{{form_data.get('description', '')}}</textarea>
                    % if errors.get('description'):
                        <div class="error-message">{{errors['description']}}</div>
                    % end
                </div>

                <div class="form-group">
                    <label for="date">Дата регистрации <span class="required">*</span></label>
                    <input type="date" 
                           id="date" 
                           name="date" 
                           value="{{form_data.get('date', '')}}"
                           class="form-control {{ 'error' if errors.get('date') else '' }}">
                    % if errors.get('date'):
                        <div class="error-message">{{errors['date']}}</div>
                    % end
                </div>

                <div class="form-actions">
                    <button type="submit" class="button-primary">Добавить партнёра</button>
                </div>
            </form>
        </div>
    </section>
    
</div>