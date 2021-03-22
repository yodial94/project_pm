class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTION = [
  	['Not started', 'not-started'],
  	['In progress', 'in-progress'],
  	['Complete', 	'complete']
  ]

  PRIORITY_OPTION = [
    ['Low', 'low'],
    ['Medium', 'medium'],
    ['Crictical',  'crictical']
  ]

  def color_class
    case status
    when 'not-started'
      'danger'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end

  def readable_status
    case status
    when 'not-started'
      'Not started'
    when 'in-progress'
      'In progress'
    when 'complete'
      'Complete'
    end
  end

  def complete?
    status == 'complete'
  end

  def in_progress?
    status == 'in-progress'
  end

  def not_started?
    status == 'not-started'
  end

  

end
